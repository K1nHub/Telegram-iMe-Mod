.class public Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;
.super Landroid/widget/FrameLayout;
.source "ActionBarMenuSlider.java"


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurIsInChat:Z

.field private blurPaint:Landroid/graphics/Paint;

.field private brightenBlurPaint:Landroid/graphics/Paint;

.field private darkenBlurPaint:Landroid/graphics/Paint;

.field private dragging:Z

.field private drawShadow:Z

.field private fillPaint:Landroid/graphics/Paint;

.field private fromValue:F

.field private fromX:F

.field private location:[I

.field private onValueChange:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private prepareBlur:Ljava/lang/Runnable;

.field private preparingBlur:Z

.field private pseudoBlurColor1:I

.field private pseudoBlurColor2:I

.field private pseudoBlurGradient:Landroid/graphics/LinearGradient;

.field private pseudoBlurMatrix:Landroid/graphics/Matrix;

.field private pseudoBlurPaint:Landroid/graphics/Paint;

.field private pseudoBlurWidth:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private roundRadiusDp:F

.field private shadowPaint:Landroid/graphics/Paint;

.field private tapStart:J

.field private value:F

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$53NYNsot8Hw978VafkIj-xhfpeg(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SmCBaI7UhcvlF21lJjt2uCwNQt4(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->lambda$new$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e6_-QtVefMBdOV2NO3CDSe6wgtI(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->lambda$setValue$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 42
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    .line 45
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    const/high16 p1, 0x40c00000    # 6.0f

    .line 52
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->shadowPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->brightenBlurPaint:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->darkenBlurPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fillPaint:Landroid/graphics/Paint;

    .line 64
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurIsInChat:Z

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->preparingBlur:Z

    .line 149
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->prepareBlur:Ljava/lang/Runnable;

    .line 77
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 80
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->shadowPaint:Landroid/graphics/Paint;

    const p2, 0x3faa3d71    # 1.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v2, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 82
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setDrawShadow(Z)V

    .line 84
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const p2, -0x41333333    # -0.4f

    .line 85
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p2, 0x3dcccccd    # 0.1f

    .line 86
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 87
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->darkenBlurPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const v0, 0x3ccccccd    # 0.025f

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->brightenBlurPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;F)F
    .locals 0

    .line 38
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    return p1
.end method

.method private getBitmapGradientColors(Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 265
    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 266
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    if-ltz v3, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v0, Landroid/util/Pair;

    .line 277
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 278
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$new$1(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->preparingBlur:Z

    .line 153
    new-instance v1, Landroid/graphics/BitmapShader;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 159
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    aget v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const v0, -0x41b33333    # -0.2f

    .line 164
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->preparingBlur:Z

    .line 151
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method

.method private synthetic lambda$setValue$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updatePseudoBlurColors()V
    .locals 12

    .line 285
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurIsInChat:Z

    const-string v1, "windowBackgroundWhite"

    if-eqz v0, :cond_4

    .line 286
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 288
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 291
    instance-of v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_1

    .line 292
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 293
    :cond_1
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 294
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 297
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->getBitmapGradientColors(Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 299
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 302
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    goto :goto_1

    .line 306
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 307
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-nez v1, :cond_5

    const/high16 v1, -0x1000000

    const v2, 0x3e3851ec    # 0.18f

    .line 308
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    .line 313
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurGradient:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurColor1:I

    if-ne v2, v0, :cond_6

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurColor2:I

    if-eq v2, v1, :cond_7

    .line 314
    :cond_6
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v8, v3, [I

    const/4 v9, 0x0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurColor1:I

    aput v0, v8, v9

    const/4 v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurColor2:I

    aput v1, v8, v0

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurGradient:Landroid/graphics/LinearGradient;

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateValue(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setValue(FZ)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->onValueChange:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_0

    .line 128
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public invalidateBlur(Z)V
    .locals 1

    .line 187
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurIsInChat:Z

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 190
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 216
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->drawShadow:Z

    if-eqz v1, :cond_0

    .line 220
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    cmpg-float v5, v1, v4

    if-gez v5, :cond_5

    .line 225
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurWidth:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    if-eq v5, v6, :cond_4

    .line 226
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_3

    .line 227
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 231
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 232
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurGradient:Landroid/graphics/LinearGradient;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 235
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurPaint:Landroid/graphics/Paint;

    sub-float v6, v4, v1

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->pseudoBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->brightenBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 245
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->darkenBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 253
    :cond_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->location:[I

    const/4 p3, 0x0

    aget p3, p2, p3

    neg-int p3, p3

    int-to-float p3, p3

    const/4 p4, 0x1

    aget p2, p2, p4

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz p1, :cond_0

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 211
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->updatePseudoBlurColors()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x2c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 174
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/16 p1, 0x100

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 175
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->blurBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->preparingBlur:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->prepareBlur:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 330
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->dragging:Z

    .line 331
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fromX:F

    .line 332
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fromValue:F

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->tapStart:J

    return v2

    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    if-ne v1, v2, :cond_4

    const/4 p1, 0x0

    .line 337
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->dragging:Z

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->tapStart:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->onValueChange:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_3

    .line 342
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return v2

    .line 347
    :cond_4
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fromValue:F

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->fromX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 348
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->dragging:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->updateValue(FZ)V

    return v2
.end method

.method public setDrawShadow(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->drawShadow:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 138
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->onValueChange:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setRoundRadiusDp(F)V
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->roundRadiusDp:F

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setValue(FZ)V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 102
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->value:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 107
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
