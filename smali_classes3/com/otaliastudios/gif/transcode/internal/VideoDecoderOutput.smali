.class public Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;
.super Ljava/lang/Object;
.source "VideoDecoderOutput.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;


# instance fields
.field private mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

.field private mFrameAvailable:Z

.field private final mFrameAvailableLock:Ljava/lang/Object;

.field private mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

.field private mRotation:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleX:F

    .line 36
    iput v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleY:F

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mRotation:I

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    .line 49
    new-instance v0, Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/draw/GlRect;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    .line 55
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    new-instance v1, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput$1;-><init>(Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/otaliastudios/gif/internal/Logger;
    .locals 1

    .line 23
    sget-object v0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    return p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    return p1
.end method

.method private awaitNewFrame()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailableLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 151
    iget-boolean v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 155
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 158
    iput-boolean v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mFrameAvailable:Z

    .line 159
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 159
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected width / height. bw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bh:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cw:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ch:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private renderNewFrame()V
    .locals 14

    .line 168
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 170
    iget v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 171
    iget v2, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleY:F

    div-float v2, v1, v2

    sub-float v3, v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v5, v1, v2

    div-float/2addr v5, v4

    .line 175
    iget-object v4, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v4}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v3, v5, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 177
    iget-object v3, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v3

    invoke-static {v3, v6, v0, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 179
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v6, v1, v1, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 180
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v8

    iget v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mRotation:I

    int-to-float v10, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 181
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getTextureTransform()[F

    move-result-object v0

    const/high16 v1, -0x41000000    # -0.5f

    invoke-static {v0, v6, v1, v1, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 183
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    invoke-direct {p0}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->awaitNewFrame()V

    .line 123
    invoke-direct {p0}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->renderNewFrame()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlProgram;->release()V

    .line 105
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    .line 110
    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 111
    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mDrawable:Lcom/otaliastudios/opengl/draw/GlRect;

    .line 112
    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mProgram:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mRotation:I

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleX:F

    .line 88
    iput p2, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mScaleY:F

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 78
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->mSurface:Landroid/view/Surface;

    return-void
.end method
