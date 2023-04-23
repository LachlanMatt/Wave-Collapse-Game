class TerrainGrassLight extends Terrain  {

    TerrainGrassLight() {
        super("images/grass_light_80.png");
        Class[] ConnectionAll = {TerrainGrassDark.class, TerrainGrassLight.class, TerrainSandLight.class};
        ConnectionUp = ConnectionAll;
        ConnectionDown = ConnectionAll;
        ConnectionLeft = ConnectionAll;
        ConnectionRight = ConnectionAll;
    }

    


}