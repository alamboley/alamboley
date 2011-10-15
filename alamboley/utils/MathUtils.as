package alamboley.utils {

	import flash.geom.Point;
	
	/**
	 * @author Aymeric
	 */
	public class MathUtils {
		
		static public function angleDirection(posX:int, destX:int, posY:int, destY:int):Number {
			
			return rad2deg(Math.atan2((destY - posY), (destX - posX)));
		}
		
		static public function rad2deg(angle:Number):Number {
			
			return angle * 180 / Math.PI;
		}

		static public function deg2rad(angle:Number):Number {

			return angle * Math.PI / 180;
		}

		static public function getLineEquation(p0:Point, p1:Point):Object{
			
			var a:Number = (p1.y - p0.y) / (p1.x - p0.x);
			var b:Number = p0.y - a * p0.x;
			
			return {a: a, b: b}; 
		}
	}
}
