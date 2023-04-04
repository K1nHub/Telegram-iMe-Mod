.class Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$2;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->onGIFCompressionCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$2;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$2;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    invoke-static {v0}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->access$400(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)Lcom/otaliastudios/gif/GIFListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionCompleted()V

    return-void
.end method
