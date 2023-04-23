class TerrainGrassDark extends Terrain  {

    TerrainGrassDark() {
        super("images/grass_dark_80.png");
        Class[] ConnectionAll = {TerrainGrassDark.class, TerrainGrassLight.class};
        ConnectionUp = ConnectionAll;
        ConnectionDown = ConnectionAll;
        ConnectionLeft = ConnectionAll;
        ConnectionRight = ConnectionAll;
    }

    


}
