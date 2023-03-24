.class public final Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
.super Ljava/lang/Object;
.source "GlEffectsFrameProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/FrameProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory;
    }
.end annotation


# static fields
.field private static final RELEASE_WAIT_TIME_MS:J = 0x64L

.field private static final THREAD_NAME:Ljava/lang/String; = "Effect:GlThread"


# instance fields
.field private final allTextureProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlTextureProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final eglContext:Landroid/opengl/EGLContext;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private final finalTextureProcessorWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

.field private final frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

.field private final inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

.field private inputStreamEnded:Z

.field private final inputSurface:Landroid/view/Surface;

.field private nextInputFrameInfo:Lcom/google/android/exoplayer2/util/FrameInfo;

.field private previousStreamOffsetUs:J

.field private final releaseFramesAutomatically:Z


# direct methods
.method public static synthetic $r8$lambda$2mp08kS_SC5QKyivyrMcvhXd5zE(Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->releaseTextureProcessorsAndDestroyGlContext()V

    return-void
.end method

.method public static synthetic $r8$lambda$bK1g_QfOn5tsBmMXHm2Z-M0OX3U(Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->lambda$releaseOutputFrame$0(J)V

    return-void
.end method

.method private constructor <init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/opengl/EGLDisplay;",
            "Landroid/opengl/EGLContext;",
            "Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlTextureProcessor;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 281
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->eglContext:Landroid/opengl/EGLContext;

    .line 282
    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    .line 283
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->releaseFramesAutomatically:Z

    .line 285
    invoke-virtual {p4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 p1, 0x0

    .line 286
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 287
    invoke-static {p4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 289
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    .line 290
    new-instance p2, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    .line 292
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->setInputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V

    .line 293
    new-instance p1, Landroid/view/Surface;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputSurface:Landroid/view/Surface;

    .line 294
    invoke-static {p4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->finalTextureProcessorWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    .line 295
    iput-object p4, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->allTextureProcessors:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    iput-wide p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->previousStreamOffsetUs:J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;,
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 50
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->createOpenGlObjectsAndFrameProcessor(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method private adjustForPixelWidthHeightRatio(Lcom/google/android/exoplayer2/util/FrameInfo;)Lcom/google/android/exoplayer2/util/FrameInfo;
    .locals 9

    .line 369
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->pixelWidthHeightRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 370
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameInfo;

    iget v2, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v4, v2

    iget v5, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    const/high16 v6, 0x3f800000    # 1.0f

    iget-wide v7, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/FrameInfo;-><init>(IIFJ)V

    return-object v1

    :cond_0
    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 376
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameInfo;

    iget v3, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    iget-wide v6, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/FrameInfo;-><init>(IIFJ)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method private static chainTextureProcessorsWithListeners(Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlTextureProcessor;",
            ">;",
            "Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;",
            "Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 239
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    add-int/lit8 v0, v0, 0x1

    .line 240
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    .line 241
    new-instance v3, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;

    invoke-direct {v3, v1, v2, p1}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;-><init>(Lcom/google/android/exoplayer2/effect/GlTextureProcessor;Lcom/google/android/exoplayer2/effect/GlTextureProcessor;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;)V

    .line 246
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->setOutputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;)V

    .line 247
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v4, p2}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->setErrorListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;)V

    .line 248
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->setInputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createOpenGlObjectsAndFrameProcessor(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;",
            "Lcom/google/android/exoplayer2/util/DebugViewProvider;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Z",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;,
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    move-object v8, p1

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Effect:GlThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 120
    invoke-static {p4}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    .line 121
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v9

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 124
    :goto_0
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglContext(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLContext;

    move-result-object v10

    .line 125
    invoke-static {v10, v9, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;

    move-object v0, p0

    move-object v1, p2

    move-object v2, v9

    move-object v3, v10

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    .line 128
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->getGlTextureProcessorsForGlEffects(Landroid/content/Context;Ljava/util/List;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 137
    new-instance v4, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    move-object/from16 v0, p6

    invoke-direct {v4, v0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V

    .line 139
    invoke-static {v5, v4, p1}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->chainTextureProcessorsWithListeners(Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V

    .line 141
    new-instance v0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-object v1, v0

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method private static getGlTextureProcessorsForGlEffects(Landroid/content/Context;Ljava/util/List;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/common/collect/ImmutableList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;",
            "Landroid/opengl/EGLDisplay;",
            "Landroid/opengl/EGLContext;",
            "Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;",
            "Lcom/google/android/exoplayer2/util/DebugViewProvider;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Z)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlTextureProcessor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    move-object v1, p0

    .line 170
    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 172
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 174
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v8, v4

    move v4, v3

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    move-object v5, p1

    .line 177
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/util/Effect;

    .line 178
    instance-of v7, v6, Lcom/google/android/exoplayer2/effect/GlEffect;

    const-string v9, "GlEffectsFrameProcessor only supports GlEffects"

    invoke-static {v7, v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 179
    check-cast v6, Lcom/google/android/exoplayer2/effect/GlEffect;

    .line 184
    instance-of v7, v6, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;

    if-eqz v7, :cond_0

    .line 185
    check-cast v6, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 188
    :cond_0
    instance-of v7, v6, Lcom/google/android/exoplayer2/effect/RgbMatrix;

    if-eqz v7, :cond_1

    .line 189
    check-cast v6, Lcom/google/android/exoplayer2/effect/RgbMatrix;

    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_1
    move-object/from16 v10, p6

    goto :goto_5

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 194
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 195
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p6

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    move-object/from16 v10, p6

    .line 199
    invoke-static {p0, v7, v9, v10}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createWithExternalSamplerApplyingEotf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object/from16 v10, p6

    .line 204
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    .line 203
    invoke-static {p0, v7, v9, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->create(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object v0

    .line 206
    :goto_3
    invoke-virtual {v11, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 207
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 208
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v8, v3

    .line 212
    :goto_4
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v7

    invoke-interface {v6, p0, v7}, Lcom/google/android/exoplayer2/effect/GlEffect;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    move-result-object v6

    .line 211
    invoke-virtual {v11, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v10, p6

    .line 215
    new-instance v12, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    .line 220
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 221
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;-><init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Lcom/google/android/exoplayer2/util/DebugViewProvider;ZLcom/google/android/exoplayer2/video/ColorInfo;Z)V

    .line 215
    invoke-virtual {v11, v12}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 227
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$releaseOutputFrame$0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->finalTextureProcessorWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->releaseOutputFrame(J)V

    return-void
.end method

.method private releaseTextureProcessorsAndDestroyGlContext()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;,
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->allTextureProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->allTextureProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getPendingInputFrameCount()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->getPendingFrameCount()I

    move-result v0

    return v0
.end method

.method public registerInputFrame()V
    .locals 2

    .line 316
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputStreamEnded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->nextInputFrameInfo:Lcom/google/android/exoplayer2/util/FrameInfo;

    const-string v1, "setInputFrameInfo must be called before registering input frames"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->nextInputFrameInfo:Lcom/google/android/exoplayer2/util/FrameInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->registerInputFrame(Lcom/google/android/exoplayer2/util/FrameInfo;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v1, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->release(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->release()V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void

    :catch_0
    move-exception v0

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 357
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public releaseOutputFrame(J)V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->releaseFramesAutomatically:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Calling this method is not allowed when releaseFramesAutomatically is enabled"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v1, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submitWithHighPriority(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method public setInputFrameInfo(Lcom/google/android/exoplayer2/util/FrameInfo;)V
    .locals 4

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->adjustForPixelWidthHeightRatio(Lcom/google/android/exoplayer2/util/FrameInfo;)Lcom/google/android/exoplayer2/util/FrameInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->nextInputFrameInfo:Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 308
    iget-wide v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->previousStreamOffsetUs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->finalTextureProcessorWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->appendStream(J)V

    .line 310
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->nextInputFrameInfo:Lcom/google/android/exoplayer2/util/FrameInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->previousStreamOffsetUs:J

    :cond_0
    return-void
.end method

.method public setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->finalTextureProcessorWrapper:Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 3

    .line 344
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 345
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputStreamEnded:Z

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->inputExternalTextureManager:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method
