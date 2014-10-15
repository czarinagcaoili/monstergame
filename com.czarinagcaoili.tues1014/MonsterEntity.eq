
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */
public class MonsterEntity : SEEntity
{
        SESprite monsters;
		int px1;
        int py1;
		int speed;
		SESprite bg1;
        
        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                var w =get_scene_width();
                var h =get_scene_height();        
                rsc.prepare_image("mike","mike",w*0.10,h*0.30);
				rsc.prepare_image("bg","bg",get_scene_width(),get_scene_height());
                monsters = add_sprite_for_image(SEImage.for_resource("mike"));
        		var wp = monsters.get_width();
                var wh = monsters.get_height();
                px1 = Math.random(0,w);
                py1 = Math.random(0,h);
                monsters.move (Math.random(0,w),Math.random(0,h));
				speed = Math.random(4,15);
        }
        
                public void tick (TimeVal time, double delta) {
                if(px1 < MainScene.px){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.px){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.py){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.py){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.px&&py1==MainScene.py) {
                        MainScene.bg = add_sprite_for_image(SEImage.for_resource("go"));

                        MainScene.bg.move(0,0);
                }
               monsters.move(px1,py1);

        }
                

        public void cleanup() {
                base.cleanup();
        }
}