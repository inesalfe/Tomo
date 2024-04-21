import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/seq_sparse/SRKWOR_box_proj.py ct 3112 484 500000
# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 4886 1024 1000000 1
# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 4886 1024 500000 1

# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 117372 262144 500000000 2

# 118400001 7.88115
# 116300001 1861.08
# 215900001 0.309772

# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 234664 262144 50000000 2

# 16700001 3.28438
# 17000001 858.196
# 22200001 0.0584274

# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 469368 262144 50000000 2

# 15100001 1.80785
# 14000001 506.559
# 49600001 0.0286944

# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 938720 262144 100000000 2

# 13200001 1.97183
# 20200001 569.84
# 89100001 0.0406371

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

if (data_set == "ct"):
	error_folder = "errors/seq_sparse/ct/"
	output_foler = "/"
	filename_error = error_folder + "SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_res = error_folder + "SRKWOR_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it)
	filename_fig_errors = "SRKWOR_box_proj_errors_" + str(M) + "_" + str(N) + "_" + str(max_it)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error = error_folder + "SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res = error_folder + "SRKWOR_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_errors = "SRKWOR_box_proj_errors_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error = error_folder + "SRKWOR_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res = error_folder + "SRKWOR_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig = "SRKWOR_box_proj_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_errors = "SRKWOR_box_proj_errors_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
else:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error = []
	error = []
	error_1 = []
	error_inf = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error.append(int(lines[i].split()[0]))
			error.append(float(lines[i].split()[1]))
			error_1.append(float(lines[i].split()[2]))
			error_inf.append(float(lines[i].split()[3]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_res) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res = []
	res = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res.append(int(lines[i].split()[0]))
			res.append(float(lines[i].split()[1]))
except IOError as e:
	print("Error opening data files.")
	exit()

import matplotlib.pylab as pylab
params = {'legend.fontsize': 'xx-large',
         'axes.labelsize': 'xx-large',
         'axes.titlesize': 'xx-large',
         'xtick.labelsize': 'xx-large',
         'ytick.labelsize': 'xx-large'}
pylab.rcParams.update(params)

plt.rc('text', usetex=True)
plt.rc('font', family='serif')

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_res, res, color='blue', label=r'$\|Ax^{(k)}-b\|_2$')
ax1.set_ylabel("Residual", color="blue")

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error, error, color='red', label=r'$\|x^{(k)}-\overline{x}\|_2$')

ax2.scatter(it_error[error.index(min(error))], min(error), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_2$')
print(it_error[error.index(min(error))], end=' ')
print(min(error))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig+".png", bbox_inches='tight')
# plt.close()

fig, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it_error, error_1, color='blue', label=r'$\|x^{(k)}-\overline{x}\|_1$')
ax1.set_ylabel("Residual", color="blue")

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it_error, error_inf, color='red', label=r'$\|x^{(k)}-\overline{x}\|_{\infty}$')

ax1.scatter(it_error[error_1.index(min(error_1))], min(error_1), color='blue', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_1$')
print(it_error[error_1.index(min(error_1))], end=' ')
print(min(error_1))

ax2.scatter(it_error[error_inf.index(min(error_inf))], min(error_inf), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|_{\infty}$')
print(it_error[error_inf.index(min(error_inf))], end=' ')
print(min(error_inf))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig_errors+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig_errors+".png", bbox_inches='tight')
# # plt.close()