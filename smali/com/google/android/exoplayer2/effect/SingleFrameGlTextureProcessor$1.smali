.class Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$1;
.super Ljava/lang/Object;
.source "SingleFrameGlTextureProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$1;->this$0:Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener$-CC;->$default$onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    return-void
.end method

.method public synthetic onReadyToAcceptInputFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener$-CC;->$default$onReadyToAcceptInputFrame(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V

    return-void
.end method
