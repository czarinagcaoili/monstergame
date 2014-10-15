
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
    SESprite player;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        var w = get_scene_width(), h = get_scene_height();
        
        rsc.prepare_image("sulli", "sulli", w*0.2, h*0.3);
        player = add_sprite_for_image(SEImage.for_resource("sulli"));
        var wp = player.get_width(), wh=player.get_height();
        player.move(w*1-wp*1, h*1-wh*1);
    }
    public void tick(TimeVal now, double delta) {
        player.move(MainScene.px, MainScene.py);
    }
    public void cleanup() {
        base.cleanup();
    }
}
