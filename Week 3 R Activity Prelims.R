#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
#getwd()
#setwd()

#This brings the 'women' data into my environment from Base R
women

#This code saves the women data as a dataframe with my name
#TASK: Change Anna to your name
Mel_mydata<-women

#This code chunk allows me to see the top 2 rows of my data
#TASK: replace the ? with the function that returns the top rows
head(Mel_mydata, 2)

#This code chunk shows me the structure 
#Such as number of columns, number of observations, variable titles, variable type, and the first 10 entries for each variable
#Task: Complete the comment above 
#by filling in the blank with what else the str function returns
str(Mel_mydata)

#This code chunk shows me some basic summary stats
#Such as Min, 1st quartile, median, mean, 3rd quartile, and max
#Task: Complete the comment above
summary(Mel_mydata)

#this allows me to apply the function to just one certain column
#Task: replace the ? in the code below with the correct character
mean(Mel_mydata$height)

#This allows me to save one column as its own object ('values' in the Environment)
#I can see the values in the Environment window
Just_Height<- (Mel_mydata$height)
#Task: Write the code below to create an object for the just weight column
Just_Weight<- (Mel_mydata$weight)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#I can see the Data in the Environment 
#Task: replace the ? in the code below with the correct character
HeightandWeight <- data.frame(Just_Height, Just_Weight)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#If I wanted to save the subset, I would need to name it as done in the code above
subset(HeightandWeight, Just_Height>65)

#TASK: replace the ?'s below with the correct functions
#This shows me how many rows are in my dataset
nrow(HeightandWeight)
#This shows me how many columns are in my dataset
ncol(HeightandWeight)

#This also shows me how many rows and columns with just one function
#TASK: replace the ? with the correct function
dim(HeightandWeight)

#This code will install the tibble package
install.packages("tibble")
#This code calls the tibble package so I can use its functions
library(tibble)

#TASK: Run the next few lines of code and note the difference in what the lines return
#Put your noted difference in a new comment below
#NewWomen combines all of the datasets into one table (four columns) and NewWomen1 combines just
#the two datasets we created in lines 36 and 38 using column headers created in the line of code.
NewWomen<-tibble(HeightandWeight, height=Just_Height, weight=Just_Weight)
NewWomen1<-tibble(height=Just_Height, weight=Just_Weight)
View(NewWomen)
View(NewWomen1)

#This installs the ggplot2 package
#TASK: replace the ? with the word needed to install the ggplot2 package
install.packages("ggplot2")

#This calls the gglot2 package so I can use the functions in it
#TASK: replace the ? with the function that call the package
library(ggplot2)

#This produces a scatterplot of the height and weight columns
ggplot(NewWomen, aes(x=height, y=weight)) + 
  geom_point()

#Optional 'Just for fun' TASK: Change the arguments for the geom point and see what happens to the plot
ggplot(NewWomen, aes(x=height, y=weight)) + 
  geom_point(shape = 21, colour = "black", fill = "yellow", size = 5, stroke = 5)
