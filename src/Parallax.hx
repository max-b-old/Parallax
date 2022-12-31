class Parallax {
	var s2d:h2d.Scene;
	var backgrounds:Array<Background> = new Array();

	public function new(s2d:h2d.Scene, backgrounds:Array<Background>) {
		this.s2d = s2d;
		this.backgrounds = backgrounds;
		init();
	}

	function init() {
		for (e in this.backgrounds) {
			e.bmp.x = 300;
			e.bmp.y = 0;
		}
	}

	public function update(dt:Float) {
		for (e in this.backgrounds) {
			e.bmp.x -= e.vel * 1;
		}
	}
}
