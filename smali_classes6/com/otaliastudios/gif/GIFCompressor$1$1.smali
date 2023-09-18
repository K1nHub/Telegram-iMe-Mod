.class Lcom/otaliastudios/gif/GIFCompressor$1$1;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/GIFCompressor$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/gif/GIFCompressor$1;


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/GIFCompressor$1;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFCompressor$1$1;->this$1:Lcom/otaliastudios/gif/GIFCompressor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$1$1;->this$1:Lcom/otaliastudios/gif/GIFCompressor$1;

    iget-object v0, v0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionProgress(D)V

    return-void
.end method
