class Parallax {
	var backgrounds1:Array<Background> = new Array();
	var backgrounds2:Array<Background> = new Array();
	var backgrounds3:Array<Background> = new Array();
	var s2d:h2d.Scene;
	var width:Int;
	var scale:Int;
	var tf:h2d.Text;

	public function new(s2d, width:Int, backgrounds1:Array<Background>, backgrounds2:Array<Background>, backgrounds3:Array<Background>) {
		this.backgrounds1 = backgrounds1;
		this.backgrounds2 = backgrounds2;
		this.backgrounds3 = backgrounds3;
		this.width = width;
		this.s2d = s2d;
		this.scale = 3;
		init(scale);
	}

	function init(scale) {
		tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
		tf.y = 350;
		for (i in 0...backgrounds1.length) {
			backgrounds3[i].bmp.setScale(scale);
			backgrounds3[i].bmp.x = width * scale;
			backgrounds2[i].bmp.setScale(scale);
			backgrounds2[i].bmp.x = 0;
			backgrounds1[i].bmp.setScale(scale);
			backgrounds1[i].bmp.x = width * scale * -1;
		}
	}

	public function update(dt:Float) {
		var resetPoint = scale * width * -2;
		for (i in 0...backgrounds1.length) {
			backgrounds3[i].bmp.x -= 3 * backgrounds3[i].vel;
			backgrounds2[i].bmp.x -= 3 * backgrounds2[i].vel;
			backgrounds1[i].bmp.x -= 3 * backgrounds1[i].vel;
		}

		for (i in 0...backgrounds3.length) {
			if (backgrounds3[i].bmp.x < resetPoint) {
				backgrounds3[i].bmp.x = backgrounds3[i].bmp.x + (scale * width) * 3;
			}
		}

		for (i in 0...backgrounds2.length) {
			if (backgrounds2[i].bmp.x < resetPoint) {
				backgrounds2[i].bmp.x = backgrounds2[i].bmp.x + (scale * width) * 3;
			}
		}

		for (i in 0...backgrounds1.length) {
			if (backgrounds1[i].bmp.x < resetPoint) {
				backgrounds1[i].bmp.x = backgrounds1[i].bmp.x + (scale * width) * 3;
			}
		}

		tf.text = resetPoint + " 0: " + Math.round(backgrounds1[0].bmp.x) + " 1: " + Math.round(backgrounds2[0].bmp.x) + " 2: "
			+ Math.round(backgrounds3[0].bmp.x);
	}
}
