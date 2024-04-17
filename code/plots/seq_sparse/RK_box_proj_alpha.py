import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/seq_sparse/RK_box_proj_alpha.py ct_gaussian 19558 16384 30000000 2

# 13180001 0.550894
# 6660001 0.553267
# 4090001 0.559818
# 2710001 0.56953
# 2210001 0.586031
# 1980001 0.640625
# 2710001 0.734564

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
max_it = int(sys.argv[4])

alpha_1 = 0.15
alpha_2 = 0.3
alpha_3 = 0.5
alpha_4 = 0.75
alpha_5 = 1
alpha_6 = 1.5
alpha_7 = 2

alpha_1_string = '\\alpha = ' + f'{alpha_1:.2f}'
alpha_2_string = '\\alpha = ' + f'{alpha_2:.2f}'
alpha_3_string = '\\alpha = ' + f'{alpha_3:.2f}'
alpha_4_string = '\\alpha = ' + f'{alpha_4:.2f}'
alpha_5_string = '\\alpha = ' + f'{alpha_5:.2f}'
alpha_6_string = '\\alpha = ' + f'{alpha_6:.2f}'
alpha_7_string = '\\alpha = ' + f'{alpha_7:.2f}'

if (data_set == "ct"):
	error_folder = "errors/seq_sparse/ct/"
	output_foler = "/"
	filename_error_1 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_res_1 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + ".txt"
	filename_error_2 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_res_2 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + ".txt"
	filename_error_3 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_res_3 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + ".txt"
	filename_error_4 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_res_4 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + ".txt"
	filename_error_5 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_res_5 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + ".txt"
	filename_error_6 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_res_6 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + ".txt"
	filename_error_7 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_res_7 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + ".txt"
	filename_fig_error = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
	filename_fig_error_1 = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
	filename_fig_error_inf = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
	filename_fig_res = "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(threads)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error_1 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_3 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_5 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_6 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_7 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_error_1 = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_error_inf = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/seq_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error_1 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_1 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_1) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_2 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_2 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_2) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_3 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_3 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_3) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_4 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_4 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_4) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_5 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_5 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_5) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_6 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_6 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_6) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_error_7 = error_folder + "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_res_7 = error_folder + "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(alpha_7) + "_" + str(max_it) + "_" + str(seed) + ".txt"
	filename_fig_error = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_error_1 = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_error_inf = "RK_alpha_box_proj_error_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
	filename_fig_res = "RK_alpha_box_proj_res_" + str(M) + "_" + str(N) + "_" + str(max_it) + "_" + str(seed)
else:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_1 = []
	error_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_1.append(int(lines[i].split()[0]))
			error_1.append(float(lines[i].split()[1]))
			error_1_1.append(float(lines[i].split()[2]))
			error_inf_1.append(float(lines[i].split()[3]))
	with open(filename_error_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_2 = []
	error_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_2.append(int(lines[i].split()[0]))
			error_2.append(float(lines[i].split()[1]))
			error_1_2.append(float(lines[i].split()[2]))
			error_inf_2.append(float(lines[i].split()[3]))
	with open(filename_error_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_3 = []
	error_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_3.append(int(lines[i].split()[0]))
			error_3.append(float(lines[i].split()[1]))
			error_1_3.append(float(lines[i].split()[2]))
			error_inf_3.append(float(lines[i].split()[3]))
	with open(filename_error_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_4 = []
	error_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_4.append(int(lines[i].split()[0]))
			error_4.append(float(lines[i].split()[1]))
			error_1_4.append(float(lines[i].split()[2]))
			error_inf_4.append(float(lines[i].split()[3]))
	with open(filename_error_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_5 = []
	error_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_5.append(int(lines[i].split()[0]))
			error_5.append(float(lines[i].split()[1]))
			error_1_5.append(float(lines[i].split()[2]))
			error_inf_5.append(float(lines[i].split()[3]))
	with open(filename_error_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_6 = []
	error_6 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_6.append(int(lines[i].split()[0]))
			error_6.append(float(lines[i].split()[1]))
			error_1_6.append(float(lines[i].split()[2]))
			error_inf_6.append(float(lines[i].split()[3]))
	with open(filename_error_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_error_7 = []
	error_7 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_error_7.append(int(lines[i].split()[0]))
			error_7.append(float(lines[i].split()[1]))
			error_1_7.append(float(lines[i].split()[2]))
			error_inf_7.append(float(lines[i].split()[3]))
except IOError as e:
	print("Error opening data files.")
	exit()

try:
	with open(filename_res_1) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_1 = []
	res_1 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_1.append(int(lines[i].split()[0]))
			res_1.append(float(lines[i].split()[1]))
	with open(filename_res_2) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_2 = []
	res_2 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_2.append(int(lines[i].split()[0]))
			res_2.append(float(lines[i].split()[1]))
	with open(filename_res_3) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_3 = []
	res_3 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_3.append(int(lines[i].split()[0]))
			res_3.append(float(lines[i].split()[1]))
	with open(filename_res_4) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_4 = []
	res_4 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_4.append(int(lines[i].split()[0]))
			res_4.append(float(lines[i].split()[1]))
	with open(filename_res_5) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_5 = []
	res_5 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_5.append(int(lines[i].split()[0]))
			res_5.append(float(lines[i].split()[1]))
	with open(filename_res_6) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_6 = []
	res_6 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_6.append(int(lines[i].split()[0]))
			res_6.append(float(lines[i].split()[1]))
	with open(filename_res_7) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it_res_7 = []
	res_7 = []
	for i in range(file_size):
		curr_it = int(lines[i].split()[0])
		if (curr_it < max_it):
			it_res_7.append(int(lines[i].split()[0]))
			res_7.append(float(lines[i].split()[1]))
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

fig = plt.figure(figsize=(10,7))

plt.plot(it_error_1, error_1, color='grey', label=r'$q = 1$')
plt.plot(it_error_2, error_2, color='orange', label=r'$q = 2$')
plt.plot(it_error_4, error_4, color='red', label=r'$q = 4$')
plt.plot(it_error_8, error_8, color='magenta', label=r'$q = 8$')
plt.plot(it_error_16, error_16, color='purple', label=r'$q = 16$')
plt.plot(it_error_32, error_32, color='blue', label=r'$q = 32$')
plt.plot(it_error_64, error_64, color='black', label=r'$q = 64$')

plt.scatter(it_error_1[error_1.index(min(error_1))], min(error_1), color='grey')
plt.scatter(it_error_2[error_2.index(min(error_2))], min(error_2), color='orange')
plt.scatter(it_error_4[error_4.index(min(error_4))], min(error_4), color='red')
plt.scatter(it_error_8[error_8.index(min(error_8))], min(error_8), color='magenta')
plt.scatter(it_error_16[error_16.index(min(error_16))], min(error_16), color='purple')
plt.scatter(it_error_32[error_32.index(min(error_32))], min(error_32), color='blue')
plt.scatter(it_error_64[error_64.index(min(error_64))], min(error_64), color='black')

print(it_error_1[error_1.index(min(error_1))], end=' ')
print(min(error_1))
print(it_error_2[error_2.index(min(error_2))], end=' ')
print(min(error_2))
print(it_error_4[error_4.index(min(error_4))], end=' ')
print(min(error_4))
print(it_error_8[error_8.index(min(error_8))], end=' ')
print(min(error_8))
print(it_error_16[error_16.index(min(error_16))], end=' ')
print(min(error_16))
print(it_error_32[error_32.index(min(error_32))], end=' ')
print(min(error_32))
print(it_error_64[error_64.index(min(error_64))], end=' ')
print(min(error_64))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|x^{(k)}-\overline{x}\|_2$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig_error+".pdf", bbox_inches='tight')
fig.savefig("plots/omp_sparse/png"+output_foler+filename_fig_error+".png", bbox_inches='tight')
plt.close()

fig = plt.figure(figsize=(10,7))

plt.plot(it_error_1_1, error_1_1, color='grey', label=r'$q = 1$')
plt.plot(it_error_1_2, error_1_2, color='orange', label=r'$q = 2$')
plt.plot(it_error_1_4, error_1_4, color='red', label=r'$q = 4$')
plt.plot(it_error_1_8, error_1_8, color='magenta', label=r'$q = 8$')
plt.plot(it_error_1_16, error_1_16, color='purple', label=r'$q = 16$')
plt.plot(it_error_1_32, error_1_32, color='blue', label=r'$q = 32$')
plt.plot(it_error_1_64, error_1_64, color='black', label=r'$q = 64$')

plt.scatter(it_error_1_1[error_1_1.index(min(error_1_1))], min(error_1_1), color='grey')
plt.scatter(it_error_1_2[error_1_2.index(min(error_1_2))], min(error_1_2), color='orange')
plt.scatter(it_error_1_4[error_1_4.index(min(error_1_4))], min(error_1_4), color='red')
plt.scatter(it_error_1_8[error_1_8.index(min(error_1_8))], min(error_1_8), color='magenta')
plt.scatter(it_error_1_16[error_1_16.index(min(error_1_16))], min(error_1_16), color='purple')
plt.scatter(it_error_1_32[error_1_32.index(min(error_1_32))], min(error_1_32), color='blue')
plt.scatter(it_error_1_64[error_1_64.index(min(error_1_64))], min(error_1_64), color='black')

print(it_error_1_1[error_1_1.index(min(error_1_1))], end=' ')
print(min(error_1_1))
print(it_error_1_2[error_1_2.index(min(error_1_2))], end=' ')
print(min(error_1_2))
print(it_error_1_4[error_1_4.index(min(error_1_4))], end=' ')
print(min(error_1_4))
print(it_error_1_8[error_1_8.index(min(error_1_8))], end=' ')
print(min(error_1_8))
print(it_error_1_16[error_1_16.index(min(error_1_16))], end=' ')
print(min(error_1_16))
print(it_error_1_32[error_1_32.index(min(error_1_32))], end=' ')
print(min(error_1_32))
print(it_error_1_64[error_1_64.index(min(error_1_64))], end=' ')
print(min(error_1_64))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|x^{(k)}-\overline{x}\|_1$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig_error_1+".pdf", bbox_inches='tight')
fig.savefig("plots/omp_sparse/png"+output_foler+filename_fig_error_1+".png", bbox_inches='tight')
plt.close()

fig = plt.figure(figsize=(10,7))

plt.plot(it_error_inf_1, error_inf_1, color='grey', label=r'$q = 1$')
plt.plot(it_error_inf_2, error_inf_2, color='orange', label=r'$q = 2$')
plt.plot(it_error_inf_4, error_inf_4, color='red', label=r'$q = 4$')
plt.plot(it_error_inf_8, error_inf_8, color='magenta', label=r'$q = 8$')
plt.plot(it_error_inf_16, error_inf_16, color='purple', label=r'$q = 16$')
plt.plot(it_error_inf_32, error_inf_32, color='blue', label=r'$q = 32$')
plt.plot(it_error_inf_64, error_inf_64, color='black', label=r'$q = 64$')

plt.scatter(it_error_inf_1[error_inf_1.index(min(error_inf_1))], min(error_inf_1), color='grey')
plt.scatter(it_error_inf_2[error_inf_2.index(min(error_inf_2))], min(error_inf_2), color='orange')
plt.scatter(it_error_inf_4[error_inf_4.index(min(error_inf_4))], min(error_inf_4), color='red')
plt.scatter(it_error_inf_8[error_inf_8.index(min(error_inf_8))], min(error_inf_8), color='magenta')
plt.scatter(it_error_inf_16[error_inf_16.index(min(error_inf_16))], min(error_inf_16), color='purple')
plt.scatter(it_error_inf_32[error_inf_32.index(min(error_inf_32))], min(error_inf_32), color='blue')
plt.scatter(it_error_inf_64[error_inf_64.index(min(error_inf_64))], min(error_inf_64), color='black')

print(it_error_inf_1[error_inf_1.index(min(error_inf_1))], end=' ')
print(min(error_inf_1))
print(it_error_inf_2[error_inf_2.index(min(error_inf_2))], end=' ')
print(min(error_inf_2))
print(it_error_inf_4[error_inf_4.index(min(error_inf_4))], end=' ')
print(min(error_inf_4))
print(it_error_inf_8[error_inf_8.index(min(error_inf_8))], end=' ')
print(min(error_inf_8))
print(it_error_inf_16[error_inf_16.index(min(error_inf_16))], end=' ')
print(min(error_inf_16))
print(it_error_inf_32[error_inf_32.index(min(error_inf_32))], end=' ')
print(min(error_inf_32))
print(it_error_inf_64[error_inf_64.index(min(error_inf_64))], end=' ')
print(min(error_inf_64))

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|x^{(k)}-\overline{x}\|_{\infty}$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig_error_inf+".pdf", bbox_inches='tight')
fig.savefig("plots/omp_sparse/png"+output_foler+filename_fig_error_inf+".png", bbox_inches='tight')
plt.close()

fig = plt.figure(figsize=(10,7))

plt.plot(it_res_1, res_1, color='grey', label=r'$%s$'%alpha_1_string)
plt.plot(it_res_2, res_2, color='orange', label=r'$%s$'%alpha_2_string)
plt.plot(it_res_3, res_3, color='red', label=r'$%s$'%alpha_3_string)
plt.plot(it_res_4, res_4, color='magenta', label=r'$%s$'%alpha_4_string)
plt.plot(it_res_5, res_5, color='purple', label=r'$%s$'%alpha_5_string)
plt.plot(it_res_6, res_6, color='blue', label=r'$%s$'%alpha_6_string)
plt.plot(it_res_7, res_7, color='black', label=r'$%s$'%alpha_7_string)

plt.grid()
plt.yscale('log')

plt.xlabel(r'Iteration')
plt.ylabel(r'$\|A x^{(k)}-b\|$')

plt.legend(loc='best')

plt.show()
fig.savefig("plots/seq_sparse/pdf"+output_foler+filename_fig_res+".pdf", bbox_inches='tight')
fig.savefig("plots/seq_sparse/png"+output_foler+filename_fig_res+".png", bbox_inches='tight')
plt.close()