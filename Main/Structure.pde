class Structure implements Connections {


    PImage img;
    Structure () {
        this("images/rail_straight_horizontal_80_2.png");
    }

    Structure (String path) {
        img = loadImage(path);
    }

    void Draw (int x, int y) {
        image(img, x, y);
    }
}