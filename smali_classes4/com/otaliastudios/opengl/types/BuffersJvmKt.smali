.class public final Lcom/otaliastudios/opengl/types/BuffersJvmKt;
.super Ljava/lang/Object;
.source "buffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nbuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 buffers.kt\ncom/otaliastudios/opengl/types/BuffersJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"
.end annotation


# direct methods
.method public static final byteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x1

    .line 14
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v0, "allocateDirect(size * Egloo.SIZE_OF_BYTE)\n        .order(ByteOrder.nativeOrder())\n        .also { it.limit(it.capacity()) }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final floatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 19
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    const-string v0, "byteBuffer(size * Egloo.SIZE_OF_FLOAT).asFloatBuffer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
