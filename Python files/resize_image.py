from PIL import Image

image = Image.open("me.jpg")

# Resize the image
resized_image = image.resize((640, 480))

# Save the resized image (optional)
resized_image.save("resized_image.jpg")
