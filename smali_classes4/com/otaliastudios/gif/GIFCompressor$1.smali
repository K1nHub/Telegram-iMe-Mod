.class Lcom/otaliastudios/gif/GIFCompressor$1;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/GIFCompressor;->compress(Lcom/otaliastudios/gif/GIFOptions;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

.field final synthetic val$options:Lcom/otaliastudios/gif/GIFOptions;


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/GIFCompressor;Lcom/otaliastudios/gif/GIFListener;Lcom/otaliastudios/gif/GIFOptions;)V
    .locals 0

    .line 108
    iput-object p2, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    iput-object p3, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$options:Lcom/otaliastudios/gif/GIFOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/otaliastudios/gif/GIFCompressor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Lcom/otaliastudios/gif/engine/Engine;

    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor$1$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/gif/GIFCompressor$1$1;-><init>(Lcom/otaliastudios/gif/GIFCompressor$1;)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/engine/Engine;-><init>(Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;)V

    .line 118
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$options:Lcom/otaliastudios/gif/GIFOptions;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/gif/engine/Engine;->compress(Lcom/otaliastudios/gif/GIFOptions;)V

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    invoke-interface {v0}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 124
    instance-of v1, v0, Ljava/lang/InterruptedException;

    move-object v2, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 127
    instance-of v3, v2, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Lcom/otaliastudios/gif/GIFCompressor;->access$300()Lcom/otaliastudios/gif/internal/Logger;

    move-result-object v0

    const-string v1, "Compression canceled."

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/gif/internal/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    invoke-interface {v0}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionCanceled()V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 134
    invoke-static {}, Lcom/otaliastudios/gif/GIFCompressor;->access$300()Lcom/otaliastudios/gif/internal/Logger;

    move-result-object v1

    const-string v2, "Fatal error while compressing, this might be invalid format or bug in engine or Android."

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/gif/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    invoke-interface {v1, v0}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionFailed(Ljava/lang/Throwable;)V

    .line 136
    throw v0

    .line 139
    :cond_3
    invoke-static {}, Lcom/otaliastudios/gif/GIFCompressor;->access$300()Lcom/otaliastudios/gif/internal/Logger;

    move-result-object v1

    const-string v2, "Unexpected error while compressing"

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/gif/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFCompressor$1;->val$listenerWrapper:Lcom/otaliastudios/gif/GIFListener;

    invoke-interface {v1, v0}, Lcom/otaliastudios/gif/GIFListener;->onGIFCompressionFailed(Ljava/lang/Throwable;)V

    .line 141
    throw v0
.end method
