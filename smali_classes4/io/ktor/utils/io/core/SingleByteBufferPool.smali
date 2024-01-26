.class final Lio/ktor/utils/io/core/SingleByteBufferPool;
.super Lio/ktor/utils/io/pool/SingleInstancePool;
.source "ByteReadPacketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/SingleInstancePool<",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/nio/ByteBuffer;

.field private final release:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "release"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lio/ktor/utils/io/pool/SingleInstancePool;-><init>()V

    .line 29
    iput-object p1, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    .line 30
    iput-object p2, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->release:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method protected disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->release:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/SingleByteBufferPool;->disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method

.method protected produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->ChunkBuffer(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/ktor/utils/io/core/SingleByteBufferPool;->produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method
