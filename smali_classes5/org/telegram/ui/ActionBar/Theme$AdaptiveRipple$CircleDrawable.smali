.class Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleDrawable"
.end annotation


# static fields
.field private static maskPaint:Landroid/graphics/Paint;


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 6599
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6600
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->radius:F

    .line 6601
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->maskPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 6602
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->maskPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 6603
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6605
    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->maskPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    .line 6608
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6609
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->radius:F

    .line 6610
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->paint:Landroid/graphics/Paint;

    .line 6611
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 6616
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6618
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->radius:F

    const/high16 v2, -0x40800000    # -1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 6619
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    .line 6620
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->radius:F

    const/high16 v3, -0x40000000    # -2.0f

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 6621
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0

    .line 6623
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->radius:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    .line 6625
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
