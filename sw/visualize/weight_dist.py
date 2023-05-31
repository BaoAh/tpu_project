import sys
import re
import matplotlib.pyplot as plt
import seaborn as sns


def parse_float_number(line):
    # Use regular expression to extract the float number from the line
    float_match = re.search(r'([+-]?)(\d+\.\d+)', line)
    if float_match:
        sign = float_match.group(1)
        float_number = float(sign + float_match.group(2))
        print(float_number)
        return float_number
    else:
        raise ValueError(
            "Invalid input line. Please make sure it contains a valid float number.")


def main():
    if len(sys.argv) != 2:
        print("Usage: python distribution_plot.py <file_path>")
        return

    file_path = sys.argv[1]
    try:
        float_numbers = []
        with open(file_path, 'r') as file:
            for line in file:
                line = line.strip()
                float_number = parse_float_number(line)
                float_numbers.append(float_number)

        # Create a distribution plot
        sns.histplot(float_numbers, kde=True, binwidth=0.025)
        plt.xlabel("Float Number")
        plt.ylabel("Density")
        plt.title("Distribution Plot")

        # Set x-axis ticks with an interval of 0.1
        ticks = [i/5 for i in range(-5, 6)]
        plt.xticks(ticks)

        # Save the plot as a PNG image
        plt.savefig("dist_plot.png")

        # plt.show()
    except FileNotFoundError:
        print("File not found.")
    except ValueError as e:
        print(str(e))


if __name__ == '__main__':
    main()
