.class public Lorg/telegram/ui/Components/BitmapShaderTools;
.super Ljava/lang/Object;
.source "BitmapShaderTools.java"


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final bounds:Landroid/graphics/RectF;

.field final canvas:Landroid/graphics/Canvas;

.field final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field final shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bounds:Landroid/graphics/RectF;

    .line 24
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->matrix:Landroid/graphics/Matrix;

    .line 27
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x1e

    const/16 v3, 0x28

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->canvas:Landroid/graphics/Canvas;

    .line 29
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Components/BitmapShaderTools;->updateBounds()V

    return-void
.end method

.method private updateBounds()V
    .locals 5

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->shader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 56
    iget-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 57
    iget-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    iget-object v2, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public setBounds(FFFF)V
    .locals 1

    .line 64
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/BitmapShaderTools;->bounds:Landroid/graphics/RectF;

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

    .line 45
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/BitmapShaderTools;->updateBounds()V

    return-void
.end method
