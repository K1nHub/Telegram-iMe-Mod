.class public Lorg/telegram/ui/Components/LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LoadingDrawable.java"


# instance fields
.field private appearByGradient:Z

.field private appearGradient:Landroid/graphics/LinearGradient;

.field private appearGradientWidth:I

.field private appearMatrix:Landroid/graphics/Matrix;

.field private appearPaint:Landroid/graphics/Paint;

.field public backgroundPaint:Landroid/graphics/Paint;

.field public color1:Ljava/lang/Integer;

.field public color2:Ljava/lang/Integer;

.field public colorKey1:Ljava/lang/String;

.field public colorKey2:Ljava/lang/String;

.field private disappearGradient:Landroid/graphics/LinearGradient;

.field private disappearGradientWidth:I

.field private disappearMatrix:Landroid/graphics/Matrix;

.field private disappearPaint:Landroid/graphics/Paint;

.field private disappearStart:J

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientColor1:I

.field private gradientColor2:I

.field private gradientStrokeColor1:I

.field private gradientStrokeColor2:I

.field private gradientWidth:I

.field private gradientWidthScale:F

.field private lastBounds:Landroid/graphics/Rect;

.field private matrix:Landroid/graphics/Matrix;

.field public paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private rectF:Landroid/graphics/RectF;

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private speed:F

.field private start:J

.field public stroke:Z

.field public strokeColor1:Ljava/lang/Integer;

.field public strokeColor2:Ljava/lang/Integer;

.field private strokeGradient:Landroid/graphics/LinearGradient;

.field private strokeMatrix:Landroid/graphics/Matrix;

.field public strokePaint:Landroid/graphics/Paint;

.field private usePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    const-string v0, "dialogBackground"

    .line 96
    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:Ljava/lang/String;

    const-string v0, "dialogBackgroundGray"

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    .line 102
    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 108
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 111
    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public disappear()V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->getPaintAlpha()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    .line 203
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0xc8

    if-gtz v1, :cond_2

    .line 205
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_2
    const/16 v3, 0x190

    .line 207
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 208
    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 209
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 210
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor1:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    .line 211
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor2:Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    .line 212
    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v9, :cond_7

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    if-ne v1, v9, :cond_7

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    if-ne v3, v9, :cond_7

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    if-ne v4, v9, :cond_7

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    if-ne v5, v9, :cond_7

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    if-eq v6, v9, :cond_8

    .line 213
    :cond_7
    iput v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    .line 215
    iput v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    .line 216
    iput v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    .line 217
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v3, v3

    const/16 v17, 0x0

    new-array v4, v11, [I

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    const/16 v21, 0x0

    aput v9, v4, v21

    iget v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    aput v13, v4, v10

    aput v9, v4, v12

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v13, v1

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    .line 218
    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 219
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    iput v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    .line 222
    iput v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    .line 223
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v3, v3

    const/4 v4, 0x4

    new-array v5, v4, [I

    iget v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    aput v6, v5, v21

    aput v6, v5, v10

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    aput v9, v5, v12

    aput v6, v5, v11

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v13, v1

    move/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    .line 224
    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 228
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 229
    iget-wide v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    const-wide/16 v13, 0x0

    cmp-long v1, v5, v13

    if-gez v1, :cond_9

    .line 230
    iput-wide v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    .line 232
    :cond_9
    iget-wide v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    sub-long v5, v3, v5

    long-to-float v1, v5

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v5

    .line 233
    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    mul-float v1, v1, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    float-to-double v10, v1

    const-wide v6, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v5

    .line 234
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v6, v6, v5

    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v7, v5

    mul-float v6, v6, v7

    int-to-float v5, v5

    rem-float v5, v6, v5

    .line 235
    iget-wide v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    sub-long v6, v3, v6

    long-to-float v6, v6

    const v7, 0x44098000    # 550.0f

    div-float v7, v6, v7

    .line 236
    iget-wide v10, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const/4 v15, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmp-long v16, v10, v13

    if-lez v16, :cond_a

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-long/2addr v3, v10

    long-to-float v3, v3

    const/high16 v4, 0x43a00000    # 320.0f

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v6, v3

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    .line 238
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v4

    const/16 v10, 0x1f

    const/16 v11, 0xff

    if-eqz v4, :cond_d

    .line 239
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    const/4 v9, 0x3

    div-int/2addr v13, v9

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    cmpg-float v13, v3, v6

    if-gez v13, :cond_d

    .line 242
    iget-object v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_b

    .line 243
    new-instance v13, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v13, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    iput-object v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    .line 244
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iput v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    int-to-float v4, v4

    const/16 v20, 0x0

    new-array v13, v12, [I

    fill-array-data v13, :array_2

    new-array v6, v12, [F

    fill-array-data v6, :array_3

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v1

    move/from16 v19, v4

    move-object/from16 v21, v13

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    .line 245
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    .line 246
    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 247
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 248
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_b
    const/high16 v14, 0x3f800000    # 1.0f

    .line 249
    iget v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    if-eq v1, v4, :cond_c

    .line 250
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iput v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    int-to-float v4, v4

    const/16 v20, 0x0

    new-array v6, v12, [I

    fill-array-data v6, :array_4

    new-array v13, v12, [F

    fill-array-data v13, :array_5

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v1

    move/from16 v19, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v13

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    .line 251
    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 252
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    :cond_c
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 256
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    neg-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 257
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v11, v10}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_6

    :cond_d
    move-object/from16 v13, p1

    const/high16 v14, 0x3f800000    # 1.0f

    .line 260
    :goto_6
    iget-boolean v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearByGradient:Z

    if-eqz v1, :cond_10

    .line 261
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    cmpg-float v2, v7, v14

    if-gez v2, :cond_10

    .line 264
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_e

    .line 265
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    .line 266
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    int-to-float v1, v1

    const/16 v20, 0x0

    new-array v4, v12, [I

    fill-array-data v4, :array_6

    new-array v6, v12, [F

    fill-array-data v6, :array_7

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v2

    move/from16 v19, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    .line 267
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    .line 268
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_7

    .line 271
    :cond_e
    iget v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    if-eq v2, v1, :cond_f

    .line 272
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    int-to-float v1, v1

    const/16 v20, 0x0

    new-array v4, v12, [I

    fill-array-data v4, :array_8

    new-array v6, v12, [F

    fill-array-data v6, :array_9

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v2

    move/from16 v19, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    .line 273
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 274
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 277
    :cond_f
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 278
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    neg-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 279
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13, v1, v11, v10}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 283
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 284
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 286
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 287
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 290
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v1, :cond_11

    goto :goto_8

    .line 293
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 294
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 295
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iput-object v8, v0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 296
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 298
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    .line 300
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_14

    .line 301
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 303
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    iget-boolean v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    if-eqz v2, :cond_15

    .line 305
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 308
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-eqz v1, :cond_16

    cmpg-float v1, v3, v14

    if-gez v1, :cond_16

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    iget v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v3, v3, v1

    int-to-float v1, v2

    sub-float/2addr v3, v1

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 313
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    .line 314
    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    :cond_16
    iget-boolean v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearByGradient:Z

    if-eqz v1, :cond_17

    cmpg-float v1, v7, v14

    if-gez v1, :cond_17

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    iget v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v7, v7, v1

    int-to-float v1, v2

    sub-float/2addr v7, v1

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    .line 324
    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_18

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_18
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0xffffff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0xffffff
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0xffffff
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0xffffff
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPaintAlpha()I
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isDisappeared()Z
    .locals 5

    .line 81
    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisappearing()Z
    .locals 5

    .line 77
    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 179
    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    return-void
.end method

.method public resetDisappear()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 189
    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lez p1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAppearByGradient(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->appearByGradient:Z

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 175
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-super {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor1:Ljava/lang/Integer;

    .line 66
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor2:Ljava/lang/Integer;

    return-void
.end method

.method public setGradientScale(F)V
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    return-void
.end method

.method public setRadii(FFFF)V
    .locals 7

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    cmpl-float v2, v2, p1

    if-nez v2, :cond_1

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_1

    aget v2, v0, v4

    cmpl-float v2, v2, p3

    if-nez v2, :cond_1

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 162
    :goto_1
    aput p1, v0, v6

    aput p1, v0, v1

    const/4 p1, 0x3

    .line 163
    aput p2, v0, p1

    aput p2, v0, v5

    const/4 p1, 0x5

    .line 164
    aput p3, v0, p1

    aput p3, v0, v4

    const/4 p1, 0x7

    .line 165
    aput p4, v0, p1

    aput p4, v0, v3

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p3, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_2
    return-void
.end method

.method public setRadiiDp(F)V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(FFFF)V

    :goto_0
    return-void
.end method

.method public setRadiiDp(FFFF)V
    .locals 0

    .line 152
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii(FFFF)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    return-void
.end method

.method public timeToDisappear()J
    .locals 6

    .line 85
    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x140

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public updateBounds()V
    .locals 3

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 336
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 337
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public usePath(Landroid/graphics/Path;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    return-void
.end method
