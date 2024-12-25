from PIL import Image

# Load the image
image = Image.open("me.jpg")

# Check the dimensions
width, height = image.size
print(f"Image dimensions: {width}x{height}")
