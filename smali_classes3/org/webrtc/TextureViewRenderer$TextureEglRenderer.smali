.class public Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;
.super Lorg/webrtc/EglRenderer;
.source "TextureViewRenderer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/TextureViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureEglRenderer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureEglRenderer"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public static synthetic $r8$lambda$1xg_P1AFlTrZF78tjcROeHyk9Pg(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->lambda$onFirstFrameRendered$0()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isFirstFrameRendered:Z

    return p0
.end method

.method static synthetic access$102(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isFirstFrameRendered:Z

    return p1
.end method

.method static synthetic access$300(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic lambda$onFirstFrameRendered$0()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isFirstFrameRendered:Z

    .line 237
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureEglRenderer"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isRenderingPaused:Z

    if-eqz v1, :cond_0

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_0
    iget v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameHeight:I

    .line 213
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->frameRotation:I

    .line 214
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 215
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting frame resolution changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-direct {p0, v1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->logD(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v4

    .line 218
    invoke-interface {v1, v2, v3, v4}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 221
    :cond_2
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v1

    iput v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameWidth:I

    .line 222
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v1

    iput v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameHeight:I

    .line 224
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->frameRotation:I

    .line 226
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public disableFpsReduction()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 160
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isRenderingPaused:Z

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-super {p0}, Lorg/webrtc/EglRenderer;->disableFpsReduction()V

    return-void

    :catchall_0
    move-exception v1

    .line 161
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 126
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 127
    iput-object p2, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    .line 128
    iget-object p2, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isFirstFrameRendered:Z

    .line 130
    iput v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameWidth:I

    .line 131
    iput v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->rotatedFrameHeight:I

    .line 132
    iput v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->frameRotation:I

    .line 133
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-super {p0, p1, p3, p4}, Lorg/webrtc/EglRenderer;->init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method protected onFirstFrameRendered()V
    .locals 1

    .line 235
    new-instance v0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V

    .line 177
    invoke-super {p0, p1}, Lorg/webrtc/EglRenderer;->onFrame(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 182
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 183
    invoke-virtual {p0, p1}, Lorg/webrtc/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 194
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 195
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 196
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/webrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;Z)V

    .line 197
    invoke-static {p1}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 188
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged: size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 168
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isRenderingPaused:Z

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-super {p0}, Lorg/webrtc/EglRenderer;->pauseVideo()V

    return-void

    :catchall_0
    move-exception v1

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFpsReduction(F)V
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->isRenderingPaused:Z

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-super {p0, p1}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
