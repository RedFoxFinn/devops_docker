
# Ex 1.11 (in directory ex1_11)

### cloned entire repo to local & cp ./<localdir>/\* ./ex1_11/

### build

#### docker build . -t example_uh

#### docker run -p 3456:8080 --name uh_material example_uh

#### localhost:3456
- button with text "Press here"
#### click button
- redirect to localhost:3456/press
- button with text "Press here"
- text underneath the button "Success"
