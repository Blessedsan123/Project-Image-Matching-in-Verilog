from PIL import Image, ImageOps
import numpy as np

def preprocess_image(input_path, output_path, target_size=(255, 255)):
    # Load the image
    image = Image.open(input_path).convert("L")
    
    # Resize and pad the image
    processed_image = ImageOps.pad(image, target_size, color=(0,))
    
    # Save the resized grayscale image (optional)
    processed_image.save(output_path)
    
    # Convert to NumPy array
    grayscale_data = np.array(processed_image)
    
    # Flatten and save as text file
    #np.savetxt("grayscale_data.txt", grayscale_data.flatten(), fmt='%d')

    #save as hex file
    with open("grayscale_data.hex", "w") as file:
     for value in grayscale_data.flatten():
        file.write(f"{value:02X}\n")  # Write as hexadecimal values


# Example usage
preprocess_image("resized_image.jpg", "processed_image.jpg")
