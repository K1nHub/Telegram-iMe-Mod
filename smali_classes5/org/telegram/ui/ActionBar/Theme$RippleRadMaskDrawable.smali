.class public Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleRadMaskDrawable"
.end annotation


# instance fields
.field invalidatePath:Z

.field private path:Landroid/graphics/Path;

.field private radii:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    .line 5880
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5876
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 5877
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    const/4 v1, 0x1

    .line 5878
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 5881
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x3

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p1, v0, v2

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 5882
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x7

    aput p2, p1, v0

    const/4 v0, 0x6

    aput p2, p1, v0

    const/4 v0, 0x5

    aput p2, p1, v0

    const/4 v0, 0x4

    aput p2, p1, v0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 5884
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5876
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 5877
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    const/4 v1, 0x1

    .line 5878
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 5885
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 5886
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x3

    aput p2, p1, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 5887
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    .line 5888
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 5913
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5914
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 5915
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5916
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5917
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 5919
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2800()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 5908
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setRadius(FF)V
    .locals 3

    .line 5892
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 5893
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x7

    aput p2, p1, v0

    const/4 v0, 0x6

    aput p2, p1, v0

    const/4 v0, 0x5

    aput p2, p1, v0

    const/4 v0, 0x4

    aput p2, p1, v0

    .line 5894
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 5895
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(FFFF)V
    .locals 3

    .line 5898
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 5899
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x3

    aput p2, p1, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 5900
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    .line 5901
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    .line 5902
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 5903
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
