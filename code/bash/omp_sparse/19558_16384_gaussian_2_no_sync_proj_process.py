import numpy as np

# python3 bash/omp_sparse/19558_16384_gaussian_2_no_sync_proj_process.py

filename = "outputs/omp_sparse/19558_16384_gaussian_2_no_sync_box_proj.txt"

try:
	with open(filename) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	time = []
	std = []
	error = []
	error_std = []
	rel_error = []
	for i in range(file_size):
		time.append(float(lines[i].split()[2]))
		std.append(float(lines[i].split()[9]))
		error.append(float(lines[i].split()[5]))
		error_std.append(float(lines[i].split()[6]))
		rel_error.append(float(lines[i].split()[7]))
except IOError as e:
	print("Error opening data files.")
	exit()

for line in range(file_size):
	if line%9 == 0:
		print()
	print(time[line], end = ' ')
	print(std[line], end = ' ')

print()

for line in range(file_size):
	if line%9 == 0:
		print()
	print(error[line], end = ' ')
	print(error_std[line], end = ' ')
	print(rel_error[line], end = ' ')

print()

filename = "outputs/omp_sparse/19558_16384_gaussian_2_no_sync_pos_proj.txt"

try:
	with open(filename) as f:
		lines = f.read().splitlines()
	file_size = len(lines)
	time = []
	std = []
	error = []
	error_std = []
	rel_error = []
	for i in range(file_size):
		time.append(float(lines[i].split()[2]))
		std.append(float(lines[i].split()[9]))
		error.append(float(lines[i].split()[5]))
		error_std.append(float(lines[i].split()[6]))
		rel_error.append(float(lines[i].split()[7]))
except IOError as e:
	print("Error opening data files.")
	exit()

for line in range(file_size):
	if line%9 == 0:
		print()
	print(time[line], end = ' ')
	print(std[line], end = ' ')

for line in range(file_size):
	if line%9 == 0:
		print()
	print(error[line], end = ' ')
	print(error_std[line], end = ' ')
	print(rel_error[line], end = ' ')

print()