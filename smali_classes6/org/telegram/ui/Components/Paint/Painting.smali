.class public Lorg/telegram/ui/Components/Paint/Painting;
.super Ljava/lang/Object;
.source "Painting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Painting$PaintingData;,
        Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    }
.end annotation


# instance fields
.field private activePath:Lorg/telegram/ui/Components/Paint/Path;

.field private activeShape:Lorg/telegram/ui/Components/Paint/Shape;

.field private activeStrokeBounds:Landroid/graphics/RectF;

.field private backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

.field private bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private bluredBitmap:Landroid/graphics/Bitmap;

.field private bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private brushTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/Paint/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private buffers:[I

.field private dataBuffer:Ljava/nio/ByteBuffer;

.field private delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

.field private helperAlpha:F

.field private helperAnimator:Landroid/animation/ValueAnimator;

.field private helperApplyAlpha:F

.field private helperApplyAnimator:Landroid/animation/ValueAnimator;

.field private helperShape:Lorg/telegram/ui/Components/Paint/Shape;

.field private helperShown:Z

.field private helperTexture:I

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageBitmapPaint:Landroid/graphics/Paint;

.field private imageBitmapRotation:I

.field private paintTexture:I

.field private paused:Z

.field private projection:[F

.field private renderProjection:[F

.field private renderState:Lorg/telegram/ui/Components/Paint/RenderState;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private reusableFramebuffer:I

.field private shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/Paint/Shader;",
            ">;"
        }
    .end annotation
.end field

.field private size:Lorg/telegram/ui/Components/Size;

.field private suppressChangesCounter:I

.field private textureBuffer:Ljava/nio/ByteBuffer;

.field private vertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static synthetic $r8$lambda$-4hzjvO6XrMMC5zlCjJ-RnM-32w(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$applyHelperShape$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40QbSg3X-0Q--RbZ3DP-5RQWgt4(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4QRc5DQpUDln8_TqzK30hsEVAaQ(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$clearShape$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$7CFHzRqD7vqGP_dxNGby4N65NZo(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$applyHelperShape$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7SzW4IIZJmStpEl131KbtIX0Vuo(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$registerUndo$11(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELVR99J-qYg6zssJzpXbNNrXz8g(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$2(Lorg/telegram/ui/Components/Paint/Shape;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KD0fY7lz0AJV2KUWmhlR3JzrHV0(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$restoreSlice$12(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PX4PKYq0FHe7WnMXSnT4HsJhPK4(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$commitPath$8(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QryzCsmVzvdNimpKrWgJIxZpi9I(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$onPause$13(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFy2qkrB80xYFpGGJohMWDd6wLU(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$commitShape$7(Lorg/telegram/ui/Components/Paint/Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j47d8UOiVApfYUQMvYi8Mz3lrwE(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$paintShape$5(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$svLS0J_rHzRTRCW_GyEpyFWiwQY(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vietkwyXGMzAPHXs34uGNHjEjx4(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$paintStroke$6(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zew8boa5Tp-GSVa3Bq0XsiE8Xzc(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$clearStroke$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;I)V
    .locals 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 72
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/RenderState;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    .line 85
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    .line 86
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    .line 88
    iget p2, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p2, p2

    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int p1, p1

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, p1, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 p2, 0x20

    if-nez p1, :cond_0

    .line 93
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    .line 107
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Shape;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Painting;F)F
    .locals 0

    .line 31
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)Lorg/telegram/ui/Components/Paint/Shape;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Path;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStrokeInternal()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V

    return-void
.end method

.method private beginSuppressingChanges()V
    .locals 1

    .line 142
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    return-void
.end method

.method private clearStrokeInternal()V
    .locals 5

    .line 579
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 580
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 582
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 584
    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const/4 v2, 0x0

    const v3, 0x8cd5

    if-ne v0, v3, :cond_0

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v3, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v4, v4, v3, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 587
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 588
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 591
    :cond_0
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_1

    .line 594
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    .line 596
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    .line 598
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    .line 600
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    return-void
.end method

.method private commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 488
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->registerUndo(Landroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v1

    .line 490
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->beginSuppressingChanges()V

    .line 492
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v2

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    const v4, 0x8ce0

    const/16 v5, 0xde1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v2, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v4, v2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v4, v4

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    invoke-static {v6, v6, v4, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    .line 502
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/Shader;

    const/4 v8, 0x0

    if-nez v4, :cond_1

    return-object v8

    .line 507
    :cond_1
    iget v9, v4, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v9, "mvpMatrix"

    .line 509
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v10}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-static {v9, v7, v6, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v9, "texture"

    .line 510
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v9, "mask"

    .line 511
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v9, "color"

    .line 512
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Brush;->getOverrideAlpha()F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    move/from16 v11, p2

    invoke-static {v11, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v9, 0x84c0

    .line 514
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 515
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v9

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v9, 0x2801

    const/16 v10, 0x2601

    .line 516
    invoke-static {v5, v9, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v11, 0x84c1

    .line 518
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v11

    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 521
    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v2, :cond_2

    const-string v2, "blured"

    .line 522
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c2

    .line 523
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 527
    :cond_2
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 530
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 532
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x5

    const/4 v4, 0x4

    .line 534
    invoke-static {v2, v6, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 536
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 537
    invoke-static {v5, v9, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 539
    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 541
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v2, :cond_3

    .line 542
    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    .line 545
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->endSuppressingChanges()V

    .line 547
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    .line 549
    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    .line 550
    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object v1
.end method

.method private commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 380
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->registerUndo(Landroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v2

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->beginSuppressingChanges()V

    .line 384
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v3

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 385
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v3

    const v5, 0x8ce0

    const/16 v6, 0xde1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 387
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v5, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v5, v5

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v3, v3

    invoke-static {v7, v7, v5, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 389
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-nez v3, :cond_0

    .line 391
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 393
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Shader;

    const/4 v9, 0x0

    if-nez v5, :cond_1

    return-object v9

    .line 398
    :cond_1
    iget v10, v5, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v10, "mvpMatrix"

    .line 400
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v11}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-static {v10, v8, v7, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v10, "texture"

    .line 401
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v10, "mask"

    .line 402
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v10, "color"

    .line 403
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    move/from16 v11, p2

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v10, 0x84c0

    .line 405
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 406
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v10

    invoke-static {v6, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x2801

    const/16 v11, 0x2601

    .line 407
    invoke-static {v6, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v12, 0x84c1

    .line 409
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 410
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v12

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 412
    instance-of v12, v3, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v12, :cond_2

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v12, :cond_2

    const-string v12, "blured"

    .line 413
    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v12, 0x84c2

    .line 414
    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 415
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v12

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 418
    :cond_2
    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v3, :cond_3

    const-string v3, "type"

    .line 419
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v12

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v3, "resolution"

    .line 420
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v13, v12, Lorg/telegram/ui/Components/Size;->width:F

    iget v12, v12, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v3, v13, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v3, "center"

    .line 421
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v3, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v3, "radius"

    .line 422
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v3, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v3, "thickness"

    .line 423
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v3, "rounding"

    .line 424
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->rounding:F

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v3, "middle"

    .line 425
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-static {v3, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v3, "rotation"

    .line 426
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v3, "fill"

    .line 427
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-boolean v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->fill:Z

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v3, "arrowTriangleLength"

    .line 428
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "composite"

    .line 429
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "clear"

    .line 430
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 433
    :cond_3
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 435
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 436
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0x8

    .line 437
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v1

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 438
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v3, 0x4

    .line 440
    invoke-static {v1, v7, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 442
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 443
    invoke-static {v6, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 445
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 447
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    .line 451
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->endSuppressingChanges()V

    .line 453
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    const/4 v1, 0x0

    .line 455
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    .line 456
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    .line 457
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    .line 458
    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    .line 460
    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    .line 461
    iput-object v9, v0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object v2
.end method

.method private endSuppressingChanges()V
    .locals 1

    .line 146
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    return-void
.end method

.method private getPaintTexture()I
    .locals 1

    .line 1009
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(Lorg/telegram/ui/Components/Size;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    .line 1012
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    return v0
.end method

.method private getReusableFramebuffer()I
    .locals 3

    .line 991
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 993
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 994
    aget v0, v1, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    .line 996
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 998
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    return v0
.end method

.method private getTexture()I
    .locals 1

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSuppressingChanges()Z
    .locals 1

    .line 138
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyHelperShape$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyHelperShape$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$clearShape$10()V
    .locals 1

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$clearStroke$9(Ljava/lang/Runnable;)V
    .locals 0

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStrokeInternal()V

    if-eqz p1, :cond_0

    .line 564
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitPath$8(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/Paint/Painting;->commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    if-eqz p3, :cond_1

    .line 478
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    :cond_1
    if-eqz p4, :cond_2

    .line 482
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$commitShape$7(Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Painting;->commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    const/4 p1, 0x0

    .line 375
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private synthetic lambda$onPause$13(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    .line 933
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    .line 934
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    .line 935
    new-instance v1, Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    if-eqz p1, :cond_0

    .line 940
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$paintShape$5(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 1

    .line 276
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    .line 279
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    .line 281
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Shape;->getBounds(Landroid/graphics/RectF;)V

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_1

    .line 283
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_1
    if-eqz p2, :cond_2

    .line 287
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$paintStroke$6(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V

    if-eqz p4, :cond_0

    .line 300
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerUndo$11(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method private synthetic lambda$restoreSlice$12(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 1

    const/4 v0, 0x1

    .line 621
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V

    return-void
.end method

.method private synthetic lambda$setHelperShape$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setHelperShape$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setHelperShape$2(Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 166
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(Lorg/telegram/ui/Components/Size;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    .line 170
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v3, :cond_6

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 171
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 177
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    aput v3, v0, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    .line 178
    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$1;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_5

    .line 202
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    .line 205
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz p1, :cond_7

    .line 206
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    goto :goto_3

    .line 208
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eq p1, v0, :cond_7

    .line 209
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_7

    .line 211
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_7
    :goto_3
    return-void
.end method

.method private paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V
    .locals 6

    .line 306
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 313
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v1

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    .line 314
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v3

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v2, v1, v4, v3, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 316
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 318
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v3, 0x8cd5

    if-ne v1, v3, :cond_6

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v5, v5, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 323
    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 324
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 327
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez p2, :cond_2

    return-void

    .line 331
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p2

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v0, :cond_3

    return-void

    .line 337
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStampResId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Texture;

    if-nez v1, :cond_4

    .line 340
    new-instance v1, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStamp()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStampResId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const p2, 0x84c0

    .line 343
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 344
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result p2

    invoke-static {v4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p2, "mvpMatrix"

    .line 345
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {p2, v1, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string p2, "texture"

    .line 346
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    if-nez p3, :cond_5

    .line 349
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    iput v0, p2, Lorg/telegram/ui/Components/Paint/RenderState;->viewportScale:F

    goto :goto_0

    .line 351
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p2, Lorg/telegram/ui/Components/Paint/RenderState;->viewportScale:F

    .line 353
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Render;->RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;Z)Landroid/graphics/RectF;

    move-result-object v0

    .line 356
    :cond_6
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_7

    .line 359
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    .line 362
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    if-eqz p1, :cond_8

    .line 363
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 365
    :cond_8
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    :goto_1
    return-void
.end method

.method private registerUndo(Landroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 608
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, p1, v1}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 613
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private renderBlit(IF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 772
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const-string v3, "blit"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Shader;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "mvpMatrix"

    .line 779
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v4}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v3, "texture"

    .line 780
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v3, "alpha"

    .line 781
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v2, 0x84c0

    .line 783
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    .line 784
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x303

    .line 786
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 788
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 789
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x8

    .line 790
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 791
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 793
    invoke-static {v1, v6, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 795
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    :cond_1
    :goto_0
    return-void
.end method

.method private renderBlitPath(ILorg/telegram/ui/Components/Paint/Path;F)V
    .locals 19

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    if-nez v1, :cond_1

    .line 730
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 733
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v2, :cond_2

    return-void

    .line 738
    :cond_2
    iget v4, v2, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "mvpMatrix"

    .line 740
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v5}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v6, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v4, "texture"

    .line 741
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v4, "mask"

    .line 742
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/Path;->getColor()I

    move-result v4

    .line 744
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getOverrideAlpha()F

    move-result v7

    mul-float v5, v5, v7

    mul-float v5, v5, p3

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    const-string v5, "color"

    .line 745
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v4, 0x84c0

    .line 747
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 748
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v4

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v4, 0x84c1

    .line 750
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v4, p1

    .line 751
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 753
    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v1, :cond_3

    const-string v1, "blured"

    .line 754
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v1, 0x84c2

    .line 755
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 756
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_3
    const/16 v1, 0x303

    .line 759
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 761
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 762
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x8

    .line 763
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 764
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 766
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 768
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    return-void
.end method

.method private renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 670
    iget-object v4, v2, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v4, :cond_1

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-ne v1, v5, :cond_1

    move-object v3, v4

    :cond_1
    if-eqz v3, :cond_6

    .line 673
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 677
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v4, :cond_3

    return-void

    .line 682
    :cond_3
    iget v6, v4, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "mvpMatrix"

    .line 684
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v7}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v8, v5, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v6, "texture"

    .line 685
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v6, "mask"

    .line 686
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 687
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v6

    .line 688
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    float-to-int v7, v7

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    const-string v7, "color"

    .line 689
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v6, 0x84c0

    .line 691
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v6, 0xde1

    .line 692
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c1

    .line 694
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v1, p2

    .line 695
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 697
    instance-of v1, v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v1, :cond_5

    const-string v1, "type"

    .line 698
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeShaderType()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "resolution"

    .line 699
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v6, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v6, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "center"

    .line 700
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "radius"

    .line 701
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "thickness"

    .line 702
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "rounding"

    .line 703
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->rounding:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "middle"

    .line 704
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "rotation"

    .line 705
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "fill"

    .line 706
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->fill:Z

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "arrowTriangleLength"

    .line 707
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "composite"

    .line 708
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "clear"

    .line 709
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_5
    const/16 v1, 0x303

    .line 712
    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0x8

    .line 714
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 715
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x8

    .line 716
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 717
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 719
    invoke-static {v1, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 721
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    :cond_6
    :goto_1
    return-void
.end method

.method private restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/16 v0, 0xde1

    .line 632
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x0

    .line 633
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getX()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getY()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getHeight()I

    move-result v5

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 634
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_1

    .line 635
    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_1
    if-eqz p2, :cond_2

    .line 639
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->cleanResources()V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyHelperShape()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 225
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    .line 226
    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$2;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cleanResources(Z)V
    .locals 4

    .line 951
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 952
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput v0, v3, v2

    .line 953
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 954
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    .line 957
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 959
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-eqz p1, :cond_1

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput p1, v0, v2

    .line 961
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 962
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    .line 965
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_2

    .line 967
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    goto :goto_0

    .line 970
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 972
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-eqz p1, :cond_4

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput p1, v0, v2

    .line 974
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 975
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    .line 978
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz p1, :cond_5

    .line 979
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 982
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 983
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    .line 984
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shader;->cleanResources()V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 986
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    :cond_7
    return-void
.end method

.method public clearShape()V
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearStroke()V
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStroke(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearStroke(Ljava/lang/Runnable;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitPath(Lorg/telegram/ui/Components/Paint/Path;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->commitPath(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public commitPath(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 8

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public commitShape(Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 4

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 799
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    .line 800
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 804
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v14, v5, v15}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 805
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aget v13, v5, v15

    const v12, 0x8d40

    .line 806
    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 808
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    invoke-static {v14, v5, v15}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 809
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aget v11, v5, v15

    const/16 v10, 0xde1

    .line 811
    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2802

    const v6, 0x812f

    .line 812
    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    .line 813
    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2801

    const/16 v6, 0x2601

    .line 814
    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    const/16 v6, 0x2600

    .line 815
    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    const/16 v19, 0x0

    move v8, v4

    move v9, v1

    const/16 v14, 0xde1

    move/from16 v10, v16

    move v14, v11

    move/from16 v11, v17

    const v15, 0x8d40

    move/from16 v12, v18

    move/from16 v18, v13

    move-object/from16 v13, v19

    .line 816
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v5, 0x8ce0

    const/16 v6, 0xde1

    const/4 v7, 0x0

    .line 818
    invoke-static {v15, v5, v6, v14, v7}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 820
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v6, v6

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v5, v5

    invoke-static {v7, v7, v6, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 822
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v12, 0x0

    if-nez v5, :cond_0

    return-object v12

    :cond_0
    if-eqz p2, :cond_1

    const-string v6, "nonPremultipliedBlit"

    goto :goto_0

    :cond_1
    const-string v6, "blit"

    .line 825
    :goto_0
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v5, :cond_2

    return-object v12

    .line 829
    :cond_2
    iget v6, v5, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 831
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 832
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 833
    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 834
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v2

    const-string v3, "mvpMatrix"

    .line 836
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v2, "texture"

    .line 838
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c0

    .line 840
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 841
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    .line 843
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 844
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v2, 0x1

    .line 846
    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    .line 848
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x0

    .line 849
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 850
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x1

    .line 851
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 853
    invoke-static {v2, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 855
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int v5, v4, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    .line 856
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    move v7, v4

    move v8, v1

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    if-eqz p2, :cond_3

    .line 860
    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v12, v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 862
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 863
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 865
    new-instance v2, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    invoke-direct {v2, v1, v12}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    move-object v1, v2

    .line 868
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 870
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v3, 0x0

    aput v18, v2, v3

    const/4 v4, 0x1

    .line 871
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 873
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput v14, v2, v3

    .line 874
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-object v1
.end method

.method public getSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return v0
.end method

.method public onPause(Ljava/lang/Runnable;)V
    .locals 2

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    const/4 v0, 0x0

    .line 946
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v0, 0x0

    .line 947
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return-void
.end method

.method public paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 8

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public render()V
    .locals 6

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    .line 653
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    mul-float v4, v4, v2

    sub-float/2addr v1, v4

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    mul-float v4, v4, v2

    sub-float/2addr v1, v4

    invoke-direct {p0, v0, v3, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitPath(ILorg/telegram/ui/Components/Paint/Path;F)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_2

    .line 655
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {p0, v0, v3, v4, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlit(IF)V

    .line 660
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 661
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    mul-float v4, v4, v2

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V

    :cond_3
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    return-void
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 8

    .line 881
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 883
    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_9

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 885
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/16 v4, -0x5a

    if-ne v1, v4, :cond_1

    :cond_0
    move v7, v0

    move v0, p1

    move p1, v7

    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    .line 891
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    int-to-float v4, p1

    div-float/2addr v4, v1

    float-to-int v4, v4

    int-to-float v5, v0

    div-float/2addr v5, v1

    float-to-int v5, v5

    .line 892
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    .line 894
    :cond_2
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 895
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    const/high16 v5, 0x3e000000    # 0.125f

    .line 896
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 897
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_3

    .line 898
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    .line 900
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 901
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 902
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_4

    neg-int v2, p1

    int-to-float v2, v2

    .line 903
    invoke-virtual {v4, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xb4

    if-ne v5, v3, :cond_5

    neg-int v2, p1

    int-to-float v2, v2

    neg-int v3, v0

    int-to-float v3, v3

    .line 905
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_5
    if-ne v5, v2, :cond_6

    neg-int v2, v0

    int-to-float v2, v2

    .line 907
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    :cond_6
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 910
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 911
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v2, :cond_7

    .line 912
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    int-to-float p1, p1

    .line 914
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v6, v6, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 916
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 919
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    float-to-int v0, v1

    invoke-static {p1, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 923
    :cond_8
    new-instance p1, Lorg/telegram/ui/Components/Paint/Texture;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :cond_9
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    return-void
.end method

.method public setHelperShape(Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRenderProjection([F)V
    .locals 0

    .line 644
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    return-void
.end method

.method public setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-void
.end method

.method public setupShaders()V
    .locals 1

    .line 1016
    invoke-static {}, Lorg/telegram/ui/Components/Paint/ShaderSet;->setup()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    return-void
.end method
