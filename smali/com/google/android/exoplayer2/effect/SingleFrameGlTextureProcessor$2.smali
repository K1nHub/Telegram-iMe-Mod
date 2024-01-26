.class Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$2;
.super Ljava/lang/Object;
.source "SingleFrameGlTextureProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;


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

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor$2;->this$0:Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCurrentOutputStreamEnded()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener$-CC;->$default$onCurrentOutputStreamEnded(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;)V

    return-void
.end method

.method public synthetic onOutputFrameAvailable(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener$-CC;->$default$onOutputFrameAvailable(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method
