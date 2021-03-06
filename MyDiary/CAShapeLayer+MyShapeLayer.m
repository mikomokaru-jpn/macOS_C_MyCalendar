//------------------------------------------------------------------------------
// カテゴリ実装:CAShapeLayer
//------------------------------------------------------------------------------
#import "CAShapeLayer+MyShapeLayer.h"

@implementation CAShapeLayer (MyShapeLayer)
// 格子を描画するCAShapeLayerオブジェクトを作成する
// rect:描画する矩形領域, atInterval:格子の間隔(ピクセル), eidth:格子の線の幅(ピクセル)
+(CAShapeLayer*)layerGridInRect:(NSRect)rect
                     atInterval:(float)iPixel width:(float)wPixel{
    
    CAShapeLayer* layer = [[CAShapeLayer alloc] init];
    
    float width = rect.size.width;
    float height = rect.size.height;
    
    NSBezierPath *path1 = [NSBezierPath bezierPath];
    
    NSInteger cnt = (height-1) / iPixel;
    for (NSInteger i = 0; i < cnt; i++){
        [path1 moveToPoint:NSMakePoint(0, (i+1)*iPixel)];
        [path1 lineToPoint:NSMakePoint(width, (i+1)*iPixel)];
    }
    cnt = (width-1) / iPixel;
    for (NSInteger i = 0; i < cnt; i++){
        [path1 moveToPoint:NSMakePoint((i+1)*iPixel, 0)];
        [path1 lineToPoint:NSMakePoint((i+1)*iPixel, height)];
    }
    layer.path = path1.cgPath;
    layer.strokeColor = [NSColor blackColor].CGColor;
    layer.lineWidth = wPixel;
    layer.position = NSMakePoint(0, 0);
    return layer;
    
}

@end
