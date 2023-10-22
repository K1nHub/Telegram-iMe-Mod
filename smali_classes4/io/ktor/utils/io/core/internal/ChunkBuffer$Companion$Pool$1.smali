.class public final Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$Pool$1;
.super Ljava/lang/Object;
.source "ChunkBuffer.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/core/internal/ChunkBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/pool/ObjectPool<",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 133
    invoke-static {}, Lio/ktor/utils/io/core/BufferFactoryKt;->getDefaultChunkedBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public bridge synthetic borrow()Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$Pool$1;->borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 128
    invoke-static {p0}, Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;->close(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 141
    invoke-static {}, Lio/ktor/utils/io/core/BufferFactoryKt;->getDefaultChunkedBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->dispose()V

    return-void
.end method

.method public recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lio/ktor/utils/io/core/BufferFactoryKt;->getDefaultChunkedBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$Pool$1;->recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method
