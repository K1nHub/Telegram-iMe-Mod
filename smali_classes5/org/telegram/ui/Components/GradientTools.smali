.class public Lorg/telegram/ui/Components/GradientTools;
.super Ljava/lang/Object;
.source "GradientTools.java"


# instance fields
.field bounds:Landroid/graphics/RectF;

.field color1:I

.field color2:I

.field color3:I

.field color4:I

.field colors:[I

.field gradientBitmap:Landroid/graphics/Bitmap;

.field matrix:Landroid/graphics/Matrix;

.field paint:Landroid/graphics/Paint;

.field shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 33
    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    return-void
.end method

.method private updateBounds()V
    .locals 5

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getAverageColor()I
    .locals 3

    .line 94
    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    .line 95
    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 98
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    if-eqz v1, :cond_1

    .line 99
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 101
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    if-eqz v1, :cond_2

    .line 102
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_2
    return v0
.end method

.method public setBounds(FFFF)V
    .locals 1

    .line 89
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/Components/GradientTools;->updateBounds()V

    return-void
.end method

.method public setColors(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 44
    iget-object v5, v0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    if-eqz v5, :cond_0

    iget v5, v0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    if-ne v5, v1, :cond_0

    iget v5, v0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    if-ne v5, v2, :cond_0

    iget v5, v0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    if-ne v5, v3, :cond_0

    iget v5, v0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    if-ne v5, v4, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    iput v1, v0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    const/4 v6, 0x0

    aput v1, v5, v6

    .line 48
    iput v2, v0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    const/4 v7, 0x1

    aput v2, v5, v7

    .line 49
    iput v3, v0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    const/4 v8, 0x2

    aput v3, v5, v8

    const/4 v9, 0x3

    .line 50
    iput v4, v0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    aput v4, v5, v9

    if-nez v2, :cond_1

    .line 52
    iget-object v2, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    iget-object v2, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 55
    iget-object v3, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42a00000    # 80.0f

    new-array v14, v8, [I

    aput v1, v14, v6

    aput v2, v14, v7

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    const/16 v1, 0x3c

    const/16 v2, 0x50

    .line 58
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 61
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GradientTools;->updateBounds()V

    return-void
.end method
