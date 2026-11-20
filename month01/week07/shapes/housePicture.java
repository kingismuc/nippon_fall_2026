public class housePicture{
    private Square house;
    private Square window;
    private Triangle roof;
    private Circle sun;
    private Circle moon;

    public housePicture(){
        house = new Square();
        window = new Square();
        roof = new Triangle();
        sun = new Circle();
        moon = new Circle();
    }

    public void draw() {
        // 1. Draw frame behind the flag so white edges are visible
        house.changeColor("red");
        house.changeSize(220);
        house.moveHorizontal(-60);
        house.moveVertical(80);
        house.makeVisible();

        // 2. White flag rectangle (240 wide x 160 tall - exact 3:2 ratio)
        window.changeColor("black");
        window.changeSize(60);
        window.moveHorizontal(-30);
        window.moveVertical(150);
        window.makeVisible();

        roof.changeColor("green");
        roof.moveHorizontal(150);
        roof.changeSize(90,260);
        roof.moveVertical(-20);
        roof.makeVisible();

        // 3. Red sun circle centered directly inside the white flag
        sun.changeColor("yellow");
        sun.changeSize(120);
        sun.moveHorizontal(570);
        sun.moveVertical(10);
        sun.makeVisible();

        moon.changeColor("blue");
        moon.changeSize(90);
        moon.moveHorizontal(400);
        moon.moveVertical(-20);
        moon.makeVisible();

    }
}

