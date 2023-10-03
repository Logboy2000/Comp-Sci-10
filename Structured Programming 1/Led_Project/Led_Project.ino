//Declare Global Variables
int ledRed = 6;
int ledYellow = 5;
int redBrightness = 0;
int yellowBrightness = 0;

void setup() {
  //set pin mode
  pinMode (ledRed, OUTPUT);
  pinMode (ledYellow, OUTPUT);
  //start serial communication
  Serial.begin(9600);
}//end of setup

void loop() {
  //updates the brightness
  analogWrite (ledRed, redBrightness);
  analogWrite (ledYellow, yellowBrightness);

  //changes the brightness variables
  redBrightness = redBrightness + 10;
  yellowBrightness = yellowBrightness - 10;
  
  //prints brightness values
  Serial.println(redBrightness);
  Serial.println("Red Brightness:");
  Serial.println(yellowBrightness);
  Serial.println("Yellow Bightness:");

  //delays the loop by 250ms
  delay(250);
}//end of loop
