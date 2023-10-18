# Bus_Admittance_Matrix

In a power system, Bus Admittance Matrix represents the nodal admittances of the various buses. With the help of the transmission line, each bus is connected to the various other buses. Admittance matrix is used to analyze the data that is needed in the load or a power flow study of the buses. It explains the admittance and the topology of the network. The following are the advantages of the bus admittance matrix. 

1.	The data preparation of the bus admittance matrix is very simple. 
2.	The formation of the bus admittance matrix and their modification is easy. 
3.	The bus admittance matrix is a sparse matrix thus the computer memory requirement is less.
 
![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/1ce854a0-cea5-4b37-9132-bd8cf41b1a7a)

The amount of current present in the bus can be calculated with the help of formation of the Admittance matrix. It is expressed as shown above. 
In the simplest form, the above matrix can be written as shown below. 

![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/1cffffb7-601b-4821-9663-5715cb907c7d)

Where, 
* I is the current of the bus in the vector form. 
* Y is the admittance matrix 
* V is the vector of the bus voltage. 

Let us consider the figure given below.
![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/f50cbebb-32b0-43e6-88d6-9fb6355cf537)

From the above figure, the (3×3) admittance matrix is formed as shown below.
![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/3924fcd2-f1b9-4bde-96bd-dff7cccbcf3d)

The diagonal elements of the Bus Admittance matrix are known as self-admittances and the off diagonal elements are known as mutual admittances.
## -Steps for solving the matrix in Matlab- 

### 1. Importing data 
Data is provided in the repo it is called branchdatafollows.txt
 <br> A. manually or
 <br> B. through a data call/import function using matlab

### 2. Accessing matrix elements
In the branch matrix there are: 
 
*	Columns for Fb, Tb (From bus to bus) data which specifies which buses a branch is connected to. 
 
*	Columns for r, x, and b which are used to determine the admittance matrix. 
 
So for example if the branch data matrix is A then the Fb (from bus) column can be accessed as follows: 
 
Fb= A(:,1); This command will access the elements of the first column in our branch data. 

### 3. Data conversion 
After impedance elements have been accessed, do the necessary conversions to prepare data imputation into the Ybus matrix. This can be done as follows: 
 
*	r values remain the same. 
*	x values will be converted into imaginary. 
*	b values will be converted into imaginary. 
*	Then form a new matrix: z = r+x. 
*	Finally:  y=1./z. 

### 4. Initializing the Ybus matrix 
Now that your data is ready to be input,  
 
*	Form a sparse matrix as your Ybus matrix. 
*	zeros(k,k) command can be used to initialize the Ybus matrix. 
*	k depends on the number of buses in the given system i.e in the Ybus matrix each bus will have a column identifying its admittance elements as shown in the example Ybus above. 

### 5. Data imputation 
In the initialized Ybus matrix you have diagonal and off-diagonal elements. You are suggested to input those data separately as shown below. Use for loops in order to input both diagonal and off-diagonal elements. 

![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/ebcd3730-8356-45cf-b61b-2ede027784ea)

## OUTPUT
![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/78b5260c-4f2b-4c37-96ce-336709001b19)

![image](https://github.com/yavuzCodiin/Bus_Admittance_Matrix/assets/82445309/2704c9b0-c284-4c52-a982-0d73436a9f42)



