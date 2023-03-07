.class public final Lcom/otaliastudios/opengl/extensions/BuffersKt;
.super Ljava/lang/Object;
.source "Buffers.kt"


# direct methods
.method public static final varargs floatBufferOf([F)Ljava/nio/FloatBuffer;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->toBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final toBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    const-string v0, "$this$toBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const-string v0, "buffer"

    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
