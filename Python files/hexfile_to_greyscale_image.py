from PIL import Image
import numpy as np

def hex_to_image(hex_file_path, output_image_path, image_size):
    """
    Convert a hexadecimal file to a grayscale image.

    :param hex_file_path: Path to the input .hex file.
    :param output_image_path: Path to save the output grayscale image.
    :param image_size: Tuple representing the dimensions of the image (width, height).
    """
    width, height = image_size

    # Read the .hex file
    with open(hex_file_path, "r") as hex_file:
        hex_data = hex_file.readlines()

    # Convert hex values to integers
    pixel_values = [int(value.strip(), 16) for value in hex_data]

    # Ensure the number of pixels matches the expected image size
    assert len(pixel_values) == width * height, "Hex file size does not match the expected image dimensions!"

    # Reshape the flat pixel list into a 2D NumPy array
    image_array = np.array(pixel_values, dtype=np.uint8).reshape((height, width))

    # Create a PIL Image from the NumPy array
    image = Image.fromarray(image_array, mode="L")

    # Save and display the image
    image.save(output_image_path)
    image.show()

    print(f"Grayscale image saved to {output_image_path}")

# Example usage
hex_to_image("grayscale_data.hex", "output_image.jpg", (255, 255))  # Replace (640, 480) with your image dimensions
