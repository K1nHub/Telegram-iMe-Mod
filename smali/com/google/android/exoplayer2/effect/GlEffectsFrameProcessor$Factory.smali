.class public Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory;
.super Ljava/lang/Object;
.source "GlEffectsFrameProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/FrameProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$pbo4WoWWTk1731BMDKS6tDH-yRo(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory;->lambda$create$0(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$create$0(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;->access$000(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    .locals 10
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
            "Z)",
            "Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    const-string v0, "Effect:GlThread"

    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 73
    new-instance v9, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)V

    .line 74
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic create(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/android/exoplayer2/util/FrameProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 53
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory;->create(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-result-object p1

    return-object p1
.end method
