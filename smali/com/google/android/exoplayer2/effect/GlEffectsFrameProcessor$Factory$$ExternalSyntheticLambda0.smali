.class public final synthetic Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/google/android/exoplayer2/util/DebugViewProvider;

.field public final synthetic f$4:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    iput-object p5, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$4:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$5:Z

    iput-object p7, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$4:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$5:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/ExecutorService;

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$Factory;->$r8$lambda$pbo4WoWWTk1731BMDKS6tDH-yRo(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/ExecutorService;)Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor;

    move-result-object v0

    return-object v0
.end method
