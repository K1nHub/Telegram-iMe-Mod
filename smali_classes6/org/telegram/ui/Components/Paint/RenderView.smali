.class public Lorg/telegram/ui/Components/Paint/RenderView;
.super Landroid/view/TextureView;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;,
        Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private color:I

.field private delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

.field private firstDrawSent:Z

.field private input:Lorg/telegram/ui/Components/Paint/Input;

.field private internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

.field private painting:Lorg/telegram/ui/Components/Paint/Painting;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

.field private shuttingDown:Z

.field private transformedBitmap:Z

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private weight:F


# direct methods
.method public static synthetic $r8$lambda$8SP6G5TKQ0TBFUhDSW4YQgAeF7M(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->lambda$performInContext$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pm6X85LZ15AjBiQEdM2qZUlbm8U(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->lambda$shutdown$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wUQCDv6_c7iC3Buf5T8SemW_DHs(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->lambda$clearAll$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yaDqAwQNSug5MEUWHfLQV0_9Nhs(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 64
    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    .line 66
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 68
    new-instance p1, Lorg/telegram/ui/Components/Paint/RenderView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 126
    new-instance p1, Lorg/telegram/ui/Components/Paint/Input;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/Input;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    .line 127
    new-instance p1, Lorg/telegram/ui/Components/Paint/ShapeInput;

    new-instance p2, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance p2, Lorg/telegram/ui/Components/Paint/RenderView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/RenderView$2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->updateTransform()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->firstDrawSent:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->firstDrawSent:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method private synthetic lambda$clearAll$2()V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->invalidateInputView()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$performInContext$3(Ljava/lang/Runnable;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1200(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    .line 606
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$shutdown$1()V
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->shutdown()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-void
.end method

.method private updateTransform()V
    .locals 8

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 276
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    neg-float v3, v2

    .line 279
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 280
    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    neg-float v2, v2

    div-float/2addr v2, v4

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    neg-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 285
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Input;->setMatrix(Landroid/graphics/Matrix;)V

    :goto_2
    const/4 v2, 0x0

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v1

    int-to-float v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object v1

    .line 289
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v0

    .line 290
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v0

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderProjection([F)V

    return-void
.end method


# virtual methods
.method public brushWeightForSize(F)F
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x3b800000    # 0.00390625f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3d340000

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public clearAll()V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Input;->clear(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearShape()V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->clear()V

    :cond_0
    return-void
.end method

.method public getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method public getCurrentColor()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    return v0
.end method

.method public getCurrentWeight()F
    .locals 1

    .line 222
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    return v0
.end method

.method public getPainting()Lorg/telegram/ui/Components/Paint/Painting;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object v0
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->stop()V

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method public onBeganDrawing()V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onBeganDrawing()V

    :cond_0
    return-void
.end method

.method public onDrawForInput(Landroid/graphics/Canvas;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onFinishedDrawing(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onFinishedDrawing(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {p0}, Landroid/view/TextureView;->getScaleX()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->process(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {p0}, Landroid/view/TextureView;->getScaleX()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Paint/Input;->process(Landroid/view/MotionEvent;F)V

    :cond_3
    :goto_0
    return v1
.end method

.method public performInContext(Ljava/lang/Runnable;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public redraw()V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->requestRender()V

    return-void
.end method

.method public resetBrush()V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->resetBrush()V

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Input;->ignoreOnce()V

    return-void
.end method

.method protected selectBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 0

    return-void
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->stop()V

    .line 244
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 245
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->updateTransform()V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeShaderType()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->start(I)V

    :cond_1
    return-void
.end method

.method public setBrushSize(F)V
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->brushWeightForSize(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->onWeightChange()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 215
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shapeInput:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->onColorChange()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    return-void
.end method

.method public setQueue(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method public setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_0
    const/16 v0, 0x8

    .line 321
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method
