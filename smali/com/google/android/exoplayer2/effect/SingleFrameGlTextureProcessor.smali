.class public abstract Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
.super Ljava/lang/Object;
.source "SingleFrameGlTextureProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor;


# instance fields
.field private errorListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;

.field private inputHeight:I

.field private inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

.field private inputWidth:I

.field private outputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;

.field private outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

.field private outputTextureInUse:Z

.field private final useHdr:Z


# direct methods
.method public static synthetic $r8$lambda$WaJ-T-yIJukBO1fCIXUYjUx7SVw(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->lambda$new$0(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->useHdr:Z

    .line 57
    new-instance p1, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$1;-><init>(Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    .line 58
    new-instance p1, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$2;-><init>(Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;

    .line 59
    sget-object p1, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->errorListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;

    return-void
.end method

.method private configureOutputTexture(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 139
    iput p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputWidth:I

    .line 140
    iput p2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputHeight:I

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->configure(II)Landroid/util/Pair;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 143
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    if-eq p2, v0, :cond_2

    .line 145
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    if-eqz p2, :cond_1

    .line 146
    iget p2, p2, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteTexture(I)V

    .line 148
    :cond_1
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->useHdr:Z

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->createTexture(IIZ)I

    move-result p2

    .line 149
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/GlUtil;->createFboForTexture(I)I

    move-result v0

    .line 150
    new-instance v1, Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p2, v0, v2, p1}, Lcom/google/android/exoplayer2/effect/TextureInfo;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    :cond_2
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract configure(II)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract drawFrame(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation
.end method

.method public final queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTextureInUse:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "The texture processor does not currently accept input frames. Release prior output frames first."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    iget v2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputWidth:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    iget v2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputHeight:I

    if-eq v0, v2, :cond_1

    .line 120
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->configureOutputTexture(II)V

    .line 122
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTextureInUse:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget v1, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->fboId:I

    iget v2, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    iget v0, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    .line 125
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->clearOutputFrame()V

    .line 126
    iget v0, p1, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->drawFrame(IJ)V

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;->onOutputFrameAvailable(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/FrameProcessingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 130
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->errorListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;

    .line 131
    instance-of p3, p1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    if-eqz p3, :cond_2

    .line 132
    check-cast p1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    goto :goto_1

    .line 133
    :cond_2
    new-instance p3, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p3

    .line 130
    :goto_1
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    :goto_2
    return-void
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTexture:Lcom/google/android/exoplayer2/effect/TextureInfo;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget v0, v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteTexture(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final releaseOutputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 0

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTextureInUse:Z

    .line 158
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public final setErrorListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->errorListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;

    return-void
.end method

.method public final setInputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->inputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputTextureInUse:Z

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;->onReadyToAcceptInputFrame()V

    :cond_0
    return-void
.end method

.method public final setOutputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;

    return-void
.end method

.method public final signalEndOfCurrentInputStream()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->outputListener:Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;->onCurrentOutputStreamEnded()V

    return-void
.end method
