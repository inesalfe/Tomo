import numpy as np
import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.pyplot import gca
import matplotlib.font_manager
import sys

# python3 plots/omp_sparse/CKA_no_sync.py ct_gaussian 19558 16384 2 2
# python3 plots/omp_sparse/CKA_no_sync.py ct_gaussian 19558 16384 4 2

# 4650000 3.2396913433226935 10.495599999999998
# 5050000 3.21973601402351 10.3667

# 6450000 3.15005238051687 9.92283
# 5250000 3.144851347838241 9.89009

if (len(sys.argv) != 5 and len(sys.argv) != 6):
	print("Incorrect number of arguments.")
	exit()

data_set = sys.argv[1]
M = int(sys.argv[2])
N = int(sys.argv[3])
threads = int(sys.argv[4])

if (data_set == "ct"):
	error_folder = "errors/omp_sparse/ct/"
	output_foler = "/"
	filename_error = error_folder + "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads) + ".txt"
	filename_fig = "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads)
elif (data_set == "ct_gaussian"):
	seed = int(sys.argv[5])
	error_folder = "errors/omp_sparse/ct_gaussian/"
	output_foler = "_gaussian/"
	filename_error = error_folder + "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads) + "_" + str(seed) + ".txt"
	filename_fig = "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads) + "_" + str(seed)
elif (data_set == "ct_poisson"):
	seed = int(sys.argv[5])
	error_folder = "errors/omp_sparse/ct_poisson/"
	output_foler = "_poisson/"
	filename_error = error_folder + "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads) + "_" + str(seed) + ".txt"
	filename_fig = "CKA_no_sync_" + str(M) + "_" + str(N) + "_" + str(threads) + "_" + str(seed)
else:
	print("Error opening data files.")
	exit()

try:
	with open(filename_error) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	it = []
	error = []
	residual = []
	for i in range(file_size):
		it.append(int(lines[i].split()[3]))
		error.append(float(lines[i].split()[5]))
		error[i] = np.sqrt(error[i])
		residual.append(float(lines[i].split()[4]))
		residual[i] = np.sqrt(residual[i])
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

fig1, ax1 = plt.subplots(figsize=(10,7))

ax1.plot(it[:200], residual[:200], color='blue', label=r'$\|Ax^{(k)}-b\|$')
ax1.set_ylabel("Residual", color="blue")

ax1.set_xlabel(r'Iterations')
plt.grid()
ax2 = ax1.twinx()
ax2.set_ylabel("Error", color="red")
ax1.set_yscale('log')
ax2.set_yscale('log')

ax2.plot(it[:200], error[:200], color='red', label=r'$\|x^{(k)}-\overline{x}\|$')

ax2.scatter(it[error.index(min(error[:200]))], min(error[:200]), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|$')
print(it[error.index(min(error[:200]))], end=' ')
print(min(error[:200]), end=' ')
print((min(error[:200])*(min(error[:200]))))

lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax2.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig1.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig+"_1.pdf", bbox_inches='tight')
fig1.savefig("plots/omp_sparse/png"+output_foler+filename_fig+"_1.png", bbox_inches='tight')
plt.close()

fig2, ax3 = plt.subplots(figsize=(10,7))

ax3.plot(it[200:], residual[200:], color='blue', label=r'$\|Ax^{(k)}-b\|$')
ax3.set_ylabel("Residual", color="blue")

ax3.set_xlabel(r'Iterations')
plt.grid()
ax4 = ax3.twinx()
ax4.set_ylabel("Error", color="red")
ax3.set_yscale('log')
ax4.set_yscale('log')

ax4.plot(it[200:], error[200:], color='red', label=r'$\|x^{(k)}-\overline{x}\|$')

ax4.scatter(it[error.index(min(error[200:]))], min(error[200:]), color='red', label=r'Minimum - $\|x^{(k)}-\overline{x}\|$')
print(it[error.index(min(error[200:]))], end=' ')
print(min(error[200:]), end=' ')
print((min(error[200:])*(min(error[200:]))))

lines, labels = ax3.get_legend_handles_labels()
lines2, labels2 = ax4.get_legend_handles_labels()
ax4.legend(lines + lines2, labels + labels2, loc='best')

plt.show()
fig2.savefig("plots/omp_sparse/pdf"+output_foler+filename_fig+"_10.pdf", bbox_inches='tight')
fig2.savefig("plots/omp_sparse/png"+output_foler+filename_fig+"_10.png", bbox_inches='tight')
plt.close()