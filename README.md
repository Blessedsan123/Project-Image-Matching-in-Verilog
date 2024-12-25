
  <h1>Image Match using Verilog</h1>
    <p>
        This repository provides a comprehensive guide to implement an image matching system using Verilog, 
        with preprocessing steps carried out in Python. The project is structured as follows:
    </p>
    
  <h2>Project Structure</h2>
    <pre>
<code>
Image Match using Verilog/
├── Hex file or Txt file/       # Contains the output hexadecimal or text data of greyscale images
├── Images/                     # Contains the original input images
├── Output Images/              # Stores the resized and greyscale images
├── Python files/               # Python scripts for preprocessing
├── Verilog files/              # Verilog source and testbench files
└── README.md                   # Project documentation
</code>
    </pre>

   <h2>Phase 1: Preprocessing in Python</h2>
    <h3>Step 1: Set up the project</h3>
    <ul>
        <li>Place your input image files in the <strong>Images/</strong> directory.</li>
        <li>Use the Python scripts in <strong>Python files/</strong> to process the images.</li>
    </ul>

  <h3>Step 2: Check image dimensions</h3>
    <p>
        Run <code>image_size_check.py</code> (located in <strong>Python files/</strong>) 
        to determine the dimensions ([width] and [height]) of your image.
    </p>

  <h3>Step 3: Resize the image (if necessary)</h3>
    <p>
        Ensure the image dimensions are <strong>255 x 255</strong> to fit the 8-bit ROM. 
        Use <code>resize_image.py</code> to resize it, and save the resized image in the 
        <strong>Output Images/</strong> directory.
    </p>

   <h3>Step 4: Convert to greyscale and save</h3>
    <p>
        Run <code>Greyscale_convert_and_save.py</code> to:
    </p>
    <ul>
        <li>Convert the resized image to greyscale.</li>
        <li>Save its hexadecimal data in <strong>Hex file or Txt file/</strong> in <code>.txt</code> or <code>.hex</code> format.</li>
    </ul>

   <h2>Phase 2: Verilog Implementation</h2>
    <h3>Step 1: Create a new Verilog project</h3>
    <p>
        Open <strong>Xilinx ISE 14.7</strong> and create a new project named <strong>ImageMatching</strong>.
    </p>

  <h3>Step 2: Design an 8-bit ROM</h3>
    <p>
        <ul>
            <li>Write a Verilog module for an 8-bit ROM in the <strong>Verilog files/</strong> directory.</li>
            <li>Use the <code>.txt</code> or <code>.hex</code> file from <strong>Hex file or Txt file/</strong> to initialize the ROM.</li>
        </ul>
    </p>

  <h3>Step 3: Create a testbench file</h3>
    <p>
        Write the testbench (<code>ImageMatch_tb.v</code>) in <strong>Verilog files/</strong>. Simulate the ROM by providing 8-bit inputs and comparing them to the stored memory data.
    </p>

   <h3>Step 4: Verify image matching</h3>
    <p>
        If all input values match, the image is <strong>matched</strong>; otherwise, it is <strong>not matched</strong>. Save the simulation results if needed.
    </p>

   <h2>Requirements</h2>
    <h3>Software:</h3>
    <ul>
        <li><strong>Python 3.8+</strong></li>
        <li><strong>Xilinx ISE Design Suite 14.7</strong></li>
    </ul>

   <h3>Python Libraries:</h3>
    <ul>
        <li><code>Pillow</code> (for image processing)</li>
    </ul>
    <p>Install the required Python libraries using:</p>
    <pre><code>pip install pillow</code></pre>

  <h2>Example Usage</h2>
    <h3>Python Preprocessing:</h3>
    <ul>
        <li>Check image size:  
            <pre><code>python Python\ files/image_size_check.py Images/input_image.jpg</code></pre>
        </li>
        <li>Resize the image:  
            <pre><code>python Python\ files/resize_image.py Images/input_image.jpg Output\ Images/resized_image.jpg</code></pre>
        </li>
        <li>Convert and save greyscale image:  
            <pre><code>python Python\ files/Greyscale_convert_and_save.py Output\ Images/resized_image.jpg Hex\ file\ or\ Txt\ file/image_data.txt</code></pre>
        </li>
    </ul>

  <h3>Verilog Simulation:</h3>
    <ul>
        <li>Load the <code>image_data.txt</code> into the ROM.</li>
        <li>Simulate the testbench using Xilinx ISE to verify the image matching logic.</li>
    </ul>
    <p> Direct Access the code into VS Code via Git <br>
        <a href="https://github.com/Blessedsan123/Project-Image-Matching-in-Verilog/" target="_blank">
            https://github.com/Blessedsan123/Project-Image-Matching-in-Verilog/
        </a>
    </p>

   <h2>Contributors</h2>
    <ul>
        <li>Sandeep Panigrahi [Elecronics and Communication Engineer student] </li>
    </ul>
