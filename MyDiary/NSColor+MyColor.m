//------------------------------------------------------------------------------
// カテゴリ実装:NSColor
//------------------------------------------------------------------------------
#import "NSColor+MyColor.h"

@implementation NSColor (MyColor)
//RGB値を指定してNSColorオブジェクトを作成する（RGB値は一般的な0〜255の値で指定する）
+(NSColor*)myColorR:(float)r G:(float)g B:(float)b{
    return [NSColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:1.0];
}
//RGB値とalph値を指定してNSColorオブジェクトを作成する（alph値は0〜1で指定)
+(NSColor*)myColorR:(float)r G:(float)g B:(float)b alpha:(float)a
{
    return [NSColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:a];
}
//RGB値を指定してCGColorを作成する（RGB値は一般的な0〜255の値で指定する）
+(CGColorRef)cgColorR:(float)r G:(float)g B:(float)b{
    CGFloat col[4];
    col[0] = r/255;
    col[1] = g/255;
    col[2] = b/255;
    col[3] = 1.0;
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorRef = CGColorCreate(colorSpace, col);
    return colorRef;
}
//RGB値を指定してCGColorを作成する（alpha値は0〜1で指定)
+(CGColorRef)cgColorR:(float)r G:(float)g B:(float)b alpha:(float)a{
    CGFloat col[4];
    col[0] = r/255;
    col[1] = g/255;
    col[2] = b/255;
    col[3] = a;
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorRef = CGColorCreate(colorSpace,col);
    return colorRef;
}

@end

