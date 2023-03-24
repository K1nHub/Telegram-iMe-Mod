.class Lorg/telegram/ui/ThemePreviewActivity$6;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 687
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 688
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 689
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v0

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v0, v1, :cond_1

    .line 690
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40000000    # 2.0f

    .line 691
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    .line 692
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

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

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 697
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 698
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    .line 699
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 700
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 701
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$4000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 702
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v1

    .line 704
    div-int/lit8 v0, v0, 0x2

    .line 705
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v3

    add-int/2addr v1, v0

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 685
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 709
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4300(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 666
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4002(Lorg/telegram/ui/ThemePreviewActivity;F)F

    .line 668
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 670
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 672
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x2c

    .line 673
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/2addr v0, p2

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/2addr v1, p2

    .line 676
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    add-int v3, v0, p1

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 679
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4302(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$6;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method
