.class Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->onGIFCompressionProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;D)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    iput-wide p2, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    invoke-static {v0}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->access$400(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)Lcom/otaliastudios/gif/GIFListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;->val$progress:D

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionProgress(D)V

    return-void
.end method
