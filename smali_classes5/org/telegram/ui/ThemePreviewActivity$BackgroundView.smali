.class Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field drawBackground:Z

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 5347
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    .line 5348
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 5345
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->drawBackground:Z

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5436
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 5386
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->drawBackground:Z

    if-eqz v0, :cond_3

    .line 5387
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 5390
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 5391
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 5392
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v0

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v0, v1, :cond_1

    .line 5393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40000000    # 2.0f

    .line 5394
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    .line 5395
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5396
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5397
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 5400
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 5401
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    .line 5402
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 5403
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5404
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 5405
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 5406
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v1

    .line 5407
    div-int/lit8 v0, v0, 0x2

    .line 5408
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v3

    add-int/2addr v1, v0

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5409
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 5388
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5389
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5413
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$5700(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5414
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5415
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5416
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v3, v2, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    if-lez v0, :cond_4

    .line 5417
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    .line 5419
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5422
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5423
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5424
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 5427
    :cond_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5429
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, -0x1000000

    const/high16 v1, 0x437f0000    # 255.0f

    .line 5430
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$6000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 5354
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 5355
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11602(Lorg/telegram/ui/ThemePreviewActivity;F)F

    .line 5356
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2700(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5357
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5358
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 5360
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11802(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    .line 5362
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 5363
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 5364
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5702(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    .line 5365
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5366
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 5367
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_2

    .line 5368
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5702(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    .line 5369
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->croppedWidth:F

    .line 5370
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->defaultScrollOffset:F

    .line 5371
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    mul-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    .line 5372
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 5373
    iput-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->drawFromStart:Z

    .line 5376
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5700(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, -0x1

    .line 5377
    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 5378
    iput-boolean v2, p0, Lorg/telegram/ui/Components/BackupImageView;->drawFromStart:Z

    .line 5381
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4802(Lorg/telegram/ui/ThemePreviewActivity;I)I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 5441
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method
