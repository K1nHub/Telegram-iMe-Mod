.class public Lorg/telegram/ui/Components/VideoEditTextureView;
.super Landroid/view/TextureView;
.source "VideoEditTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;
    }
.end annotation


# instance fields
.field private currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private delegate:Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;

.field private eglThread:Lorg/telegram/ui/Components/FilterGLThread;

.field private videoHeight:I

.field private videoWidth:I

.field private viewRect:Lorg/telegram/ui/Components/Rect;


# direct methods
.method public static synthetic $r8$lambda$BW9TAdbC-zeXy11-oF4zOft3FnU(Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->lambda$onSurfaceTextureAvailable$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KTSIzf6Y86Al3AH5aub8Lkpe8VY(Lorg/telegram/ui/Components/VideoEditTextureView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoEditTextureView;->lambda$onSurfaceTextureSizeChanged$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Lorg/telegram/ui/Components/Rect;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->viewRect:Lorg/telegram/ui/Components/Rect;

    .line 26
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 27
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureAvailable$0(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 66
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureSizeChanged$1()V
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2, v1, v2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->viewRect:Lorg/telegram/ui/Components/Rect;

    iget v1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v1, v2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget p1, v0, Lorg/telegram/ui/Components/Rect;->y:F

    cmpl-float v1, p2, p1

    if-ltz v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getVideoHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoWidth:I

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread;

    new-instance v1, Lorg/telegram/ui/Components/VideoEditTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/VideoEditTextureView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/VideoEditTextureView;)V

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/FilterGLThread;-><init>(Landroid/graphics/SurfaceTexture;Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    .line 68
    iget p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoWidth:I

    if-eqz p1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoHeight:I

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/FilterGLThread;->setVideoSize(II)V

    .line 71
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->setSurfaceTextureSize(II)V

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p3, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->delegate:Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;

    if-eqz p1, :cond_1

    .line 74
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;->onEGLThreadAvailable(Lorg/telegram/ui/Components/FilterGLThread;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->setSurfaceTextureSize(II)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    new-instance p2, Lorg/telegram/ui/Components/VideoEditTextureView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/VideoEditTextureView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/VideoEditTextureView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->currentVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->delegate:Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;->onEGLThreadAvailable(Lorg/telegram/ui/Components/FilterGLThread;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 42
    iput p1, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoWidth:I

    .line 43
    iput p2, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->videoHeight:I

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->setVideoSize(II)V

    return-void
.end method

.method public setViewRect(FFFF)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoEditTextureView;->viewRect:Lorg/telegram/ui/Components/Rect;

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    .line 115
    iput p2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    .line 116
    iput p3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    .line 117
    iput p4, v0, Lorg/telegram/ui/Components/Rect;->height:F

    return-void
.end method
