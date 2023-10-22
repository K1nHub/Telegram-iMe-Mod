.class public final Lio/ktor/utils/io/ByteChannelKt;
.super Ljava/lang/Object;
.source "ByteChannel.kt"


# direct methods
.method public static final ByteChannel(Z)Lio/ktor/utils/io/ByteChannel;
    .locals 7

    .line 13
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
