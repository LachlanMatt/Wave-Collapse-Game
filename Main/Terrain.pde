class Terrain {

    PImage img;
    Class[]     ConnectionUp, 
                ConnectionDown, 
                ConnectionLeft, 
                ConnectionRight, 
                ConnectionAbove, 
                ConnectionBelow;



    Terrain () {
        this("images/tree_apple_80.png");
    }

    Terrain(String path) {
        img = loadImage(path);
    }

    void Draw (int x, int y) {
        image(img, x, y);
    }


}