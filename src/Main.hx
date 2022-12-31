class Main extends hxd.App {
	var parallax:Parallax;

	override function init() {
		createParallax();
	}

	static function main() {
		new Main();
	}

	override function update(dt:Float) {
		parallax.update(dt);
	}

	function createParallax() {
		hxd.Res.initEmbed();

		var backgrounds:Array<Background> = new Array();

		var b1 = new Background(new h2d.Bitmap(hxd.Res._1_Background.toTile(), s2d), 0.4);
		var b2 = new Background(new h2d.Bitmap(hxd.Res._2_Superfar.toTile(), s2d), 0.5);
		var b3 = new Background(new h2d.Bitmap(hxd.Res._3_Far.toTile(), s2d), 0.6);
		var b4 = new Background(new h2d.Bitmap(hxd.Res._4_Far_light.toTile(), s2d), 0.6);
		var b5 = new Background(new h2d.Bitmap(hxd.Res._5_Close.toTile(), s2d), 0.7);
		var b6 = new Background(new h2d.Bitmap(hxd.Res._6_Close_light.toTile(), s2d), 0.7);
		var b7 = new Background(new h2d.Bitmap(hxd.Res._7_Tileset.toTile(), s2d), 0.8);

		backgrounds.push(b1);
		backgrounds.push(b2);
		backgrounds.push(b3);
		backgrounds.push(b4);
		backgrounds.push(b5);
		backgrounds.push(b6);
		backgrounds.push(b7);

		parallax = new Parallax(s2d, backgrounds);
	}
}
