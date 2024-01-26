.class Lorg/telegram/ui/ChannelWallpaperActivity$3;
.super Landroid/view/View;
.source "ChannelWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelWallpaperActivity;->toggleTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$bitmapCanvas:Landroid/graphics/Canvas;

.field final synthetic val$bitmapPaint:Landroid/graphics/Paint;

.field final synthetic val$cx:F

.field final synthetic val$cy:F

.field final synthetic val$r:F

.field final synthetic val$x:F

.field final synthetic val$xRefPaint:Landroid/graphics/Paint;

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V
    .locals 0

    .line 415
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iput-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmapCanvas:Landroid/graphics/Canvas;

    iput p4, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cx:F

    iput p5, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cy:F

    iput p6, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$r:F

    iput-object p7, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$xRefPaint:Landroid/graphics/Paint;

    iput-object p8, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p9, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmapPaint:Landroid/graphics/Paint;

    iput p10, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$x:F

    iput p11, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$y:F

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 418
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$800(Lorg/telegram/ui/ChannelWallpaperActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmapCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cx:F

    iget v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cy:F

    iget v4, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$r:F

    iget-object v5, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$800(Lorg/telegram/ui/ChannelWallpaperActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 425
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cx:F

    iget v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$cy:F

    iget v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$r:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$800(Lorg/telegram/ui/ChannelWallpaperActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 427
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$x:F

    iget v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->val$y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$3;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$900(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->draw(Landroid/graphics/Canvas;)V

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
