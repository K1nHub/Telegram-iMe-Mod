.class final Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;
.super Ljava/lang/Object;
.source "FinalMatrixTextureProcessorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinalProcessorWrapper"


# instance fields
.field private final availableFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/effect/TextureInfo;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field private final context:Landroid/content/Context;

.field private debugSurfaceView:Landroid/view/SurfaceView;

.field private debugSurfaceViewWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;

.field private final debugViewProvider:Lcom/google/android/exoplayer2/util/DebugViewProvider;

.field private final eglContext:Landroid/opengl/EGLContext;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private final frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

.field private inputHeight:I

.field private inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

.field private inputWidth:I

.field private matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

.field private final matrixTransformations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private outputEglSurface:Landroid/opengl/EGLSurface;

.field private outputSizeBeforeSurfaceTransformation:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile outputSizeOrRotationChanged:Z

.field private outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

.field private final releaseFramesAutomatically:Z

.field private final rgbMatrices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleFromExternalTexture:Z

.field private final streamOffsetUsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final textureTransformMatrix:[F


# direct methods
.method public static synthetic $r8$lambda$QfmZiFMb8APvjyWJS6otgW_Fg2U(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->lambda$maybeRenderFrameToDebugSurface$0(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Lcom/google/android/exoplayer2/util/DebugViewProvider;ZLcom/google/android/exoplayer2/video/ColorInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/opengl/EGLDisplay;",
            "Landroid/opengl/EGLContext;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;",
            "Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;",
            "Lcom/google/android/exoplayer2/util/DebugViewProvider;",
            "Z",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Z)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->context:Landroid/content/Context;

    .line 109
    iput-object p4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    .line 110
    iput-object p5, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    .line 111
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 112
    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglContext:Landroid/opengl/EGLContext;

    .line 113
    iput-object p7, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugViewProvider:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    .line 114
    iput-object p6, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    .line 115
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->sampleFromExternalTexture:Z

    .line 116
    iput-object p9, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 117
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->releaseFramesAutomatically:Z

    .line 119
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->textureTransformMatrix:[F

    .line 120
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    .line 121
    new-instance p1, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$1;-><init>(Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    .line 122
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->availableFrames:Ljava/util/Queue;

    return-void
.end method

.method private createMatrixTextureProcessorForOutputSurface(Lcom/google/android/exoplayer2/util/SurfaceInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 354
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    .line 355
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 356
    iget v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;-><init>()V

    iget v2, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    int-to-float v2, v2

    .line 359
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->setRotationDegrees(F)Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->build()Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 362
    :cond_0
    iget v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    const/4 v3, 0x0

    .line 363
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/effect/Presentation;->createForWidthAndHeight(III)Lcom/google/android/exoplayer2/effect/Presentation;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 368
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 369
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->sampleFromExternalTexture:Z

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 371
    invoke-static {v1, v0, v2, v4}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createWithExternalSamplerApplyingEotfThenOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 375
    invoke-static {v1, v0, v2, v4}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createApplyingOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object v0

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->textureTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->setTextureTransformMatrix([F)V

    .line 380
    iget v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->configure(II)Landroid/util/Pair;

    move-result-object v1

    .line 381
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 382
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    if-ne v1, p1, :cond_3

    move v3, v5

    :cond_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-object v0
.end method

.method private declared-synchronized ensureConfigured(II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    monitor-enter p0

    .line 289
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputHeight:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeBeforeSurfaceTransformation:Landroid/util/Pair;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputWidth:I

    .line 293
    iput p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputHeight:I

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    .line 295
    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->configureAndGetOutputSize(IILcom/google/common/collect/ImmutableList;)Landroid/util/Pair;

    move-result-object p1

    .line 296
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeBeforeSurfaceTransformation:Landroid/util/Pair;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 298
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeBeforeSurfaceTransformation:Landroid/util/Pair;

    .line 299
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 300
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 299
    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onOutputSizeChanged(II)V

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 306
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-eqz p1, :cond_2

    .line 307
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->release()V

    .line 308
    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 310
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return p2

    .line 315
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_6

    .line 317
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 324
    sget-object v4, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    goto :goto_0

    .line 325
    :cond_4
    sget-object v4, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 320
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/util/GlUtil;->getEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugViewProvider:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    iget v4, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iget v5, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    .line 329
    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/util/DebugViewProvider;->getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 331
    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 332
    new-instance v4, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;

    iget-object v5, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-direct {v4, v5, v6, v1, v3}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;ZLandroid/view/SurfaceView;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugSurfaceViewWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;

    .line 335
    :cond_5
    iput-object v3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugSurfaceView:Landroid/view/SurfaceView;

    move-object v1, v2

    .line 338
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeOrRotationChanged:Z

    if-eqz v2, :cond_7

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->release()V

    .line 340
    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 341
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeOrRotationChanged:Z

    .line 343
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-nez p2, :cond_8

    .line 344
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->createMatrixTextureProcessorForOutputSurface(Lcom/google/android/exoplayer2/util/SurfaceInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 347
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    .line 348
    iput-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 349
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static synthetic lambda$maybeRenderFrameToDebugSurface$0(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 395
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->clearOutputFrame()V

    .line 396
    iget p1, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->drawFrame(IJ)V

    return-void
.end method

.method private maybeRenderFrameToDebugSurface(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->debugSurfaceViewWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-nez v1, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->maybeRenderToSurfaceView(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/FrameProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "FinalProcessorWrapper"

    const-string p3, "Error rendering to debug preview"

    .line 399
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized maybeRenderFrameToOutputSurface(Lcom/google/android/exoplayer2/effect/TextureInfo;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, -0x2

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    .line 256
    :try_start_0
    iget v0, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    iget v1, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->ensureConfigured(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    .line 263
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 265
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglContext:Landroid/opengl/EGLContext;

    iget v5, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iget v1, v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    invoke-static {v3, v4, v0, v5, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    .line 271
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->clearOutputFrame()V

    .line 272
    iget p1, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->drawFrame(IJ)V

    .line 274
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    const-wide/16 p2, -0x1

    cmp-long p2, p4, p2

    if-nez p2, :cond_1

    .line 278
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p4

    .line 274
    :cond_1
    invoke-static {p1, v0, p4, p5}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 280
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 258
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private renderFrameToSurfaces(Lcom/google/android/exoplayer2/effect/TextureInfo;JJ)V
    .locals 0

    .line 244
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->maybeRenderFrameToOutputSurface(Lcom/google/android/exoplayer2/effect/TextureInfo;JJ)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/FrameProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    goto :goto_0

    :catch_1
    move-exception p4

    .line 246
    :goto_0
    iget-object p5, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    .line 247
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/util/FrameProcessingException;->from(Ljava/lang/Exception;J)Lcom/google/android/exoplayer2/util/FrameProcessingException;

    move-result-object p4

    .line 246
    invoke-interface {p5, p4}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    .line 249
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->maybeRenderFrameToDebugSurface(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    .line 250
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    return-void
.end method


# virtual methods
.method public appendStream(J)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 10

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    .line 146
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v1, "No input stream specified."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onOutputFrameAvailable(J)V

    .line 149
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->releaseFramesAutomatically:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .line 150
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->renderFrameToSurfaces(Lcom/google/android/exoplayer2/effect/TextureInfo;JJ)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->availableFrames:Ljava/util/Queue;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->release()V

    :cond_0
    return-void
.end method

.method public releaseOutputFrame(J)V
    .locals 8

    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->releaseFramesAutomatically:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 168
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p0

    move-wide v6, p1

    .line 168
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->renderFrameToSurfaces(Lcom/google/android/exoplayer2/effect/TextureInfo;JJ)V

    return-void
.end method

.method public releaseOutputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 0

    .line 161
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setErrorListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;)V
    .locals 0

    .line 140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setInputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    .line 128
    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public setOutputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;)V
    .locals 0

    .line 134
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public declared-synchronized setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V
    .locals 3

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    iget-object v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, v0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    iget v2, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    if-ne v1, v2, :cond_2

    iget v0, v0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSizeOrRotationChanged:Z

    .line 237
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->outputSurfaceInfo:Lcom/google/android/exoplayer2/util/SurfaceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTextureTransformMatrix([F)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->textureTransformMatrix:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->matrixTextureProcessor:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->setTextureTransformMatrix([F)V

    :cond_0
    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No input stream to end."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->streamOffsetUsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->frameProcessorListener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingEnded()V

    :cond_0
    return-void
.end method
