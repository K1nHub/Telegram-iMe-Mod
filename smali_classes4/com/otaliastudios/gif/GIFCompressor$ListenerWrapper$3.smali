.class Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->onGIFCompressionFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

.field final synthetic val$exception:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;Ljava/lang/Throwable;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    iput-object p2, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;->val$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;->this$0:Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    invoke-static {v0}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->access$400(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)Lcom/otaliastudios/gif/GIFListener;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;->val$exception:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionFailed(Ljava/lang/Throwable;)V

    return-void
.end method
