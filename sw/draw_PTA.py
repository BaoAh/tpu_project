import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Generate some random data
x = np.zeros(5)
y = np.zeros(5)
z = np.zeros(5)


for i in range(5):
    input_string = input()
    float_list = [float(x) for x in input_string.split()]
    x[i] = float_list[0]
    y[i] = float_list[1]
    z[i] = float_list[2]

# Create a figure and a 3D axis
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Plot the points in 3D
ax.scatter(x, y, z, c='r', marker='o')

for i in range(len(x)):
    ax.text(x[i], y[i], z[i], f'({x[i]*y[i]*z[i]:.2f})', color='blue')

# Set labels and title
ax.set_xlabel('Time(ns)')
ax.set_ylabel('Area(um^2)')
ax.set_zlabel('Power(mW)')
ax.set_xlim(4.8, None)
ax.set_ylim(180000, None)
ax.set_zlim(5, None)
ax.set_title('Area*Time*Power')

# Show the plot
plt.savefig("PTA.png")
