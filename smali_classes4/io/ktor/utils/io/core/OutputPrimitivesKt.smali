.class public final Lio/ktor/utils/io/core/OutputPrimitivesKt;
.super Ljava/lang/Object;
.source "OutputPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutputPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputPrimitives.kt\nio/ktor/utils/io/core/OutputPrimitivesKt\n+ 2 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 3 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,89:1\n70#1,4:90\n74#1,4:96\n84#1,4:100\n70#1,4:106\n74#1,4:112\n84#1,4:116\n70#1,4:126\n74#1,4:132\n84#1,4:136\n70#1,4:142\n74#1,4:148\n70#1,4:152\n74#1,4:158\n65#2,2:94\n51#2,2:110\n79#2,2:130\n93#2,2:146\n107#2,2:156\n43#3:104\n45#3:105\n47#3:120\n43#3:121\n45#3:122\n49#3:123\n43#3:124\n45#3:125\n51#3:140\n53#3:141\n*S KotlinDebug\n*F\n+ 1 OutputPrimitives.kt\nio/ktor/utils/io/core/OutputPrimitivesKt\n*L\n6#1:90,4\n6#1:96,4\n12#1:100,4\n19#1:106,4\n19#1:112,4\n25#1:116,4\n42#1:126,4\n42#1:132,4\n48#1:136,4\n55#1:142,4\n55#1:148,4\n61#1:152,4\n61#1:158,4\n6#1:94,2\n19#1:110,2\n42#1:130,2\n55#1:146,2\n61#1:156,2\n13#1:104\n14#1:105\n31#1:120\n32#1:121\n33#1:122\n35#1:123\n36#1:124\n37#1:125\n49#1:140\n50#1:141\n*E\n"
.end annotation


# direct methods
.method public static final writeInt(Lio/ktor/utils/io/core/Output;I)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    .line 72
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 73
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 20
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeIntFallback(Lio/ktor/utils/io/core/Output;I)V

    :cond_1
    return-void
.end method

.method private static final writeIntFallback(Lio/ktor/utils/io/core/Output;I)V
    .locals 1

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    .line 86
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/Output;J)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    .line 72
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 73
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 43
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLongFallback(Lio/ktor/utils/io/core/Output;J)V

    :cond_1
    return-void
.end method

.method private static final writeLongFallback(Lio/ktor/utils/io/core/Output;J)V
    .locals 1

    const/16 v0, 0x8

    .line 84
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 48
    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    .line 86
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/Output;S)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 72
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 73
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShortFallback(Lio/ktor/utils/io/core/Output;S)V

    :cond_1
    return-void
.end method

.method private static final writeShortFallback(Lio/ktor/utils/io/core/Output;S)V
    .locals 1

    const/4 v0, 0x2

    .line 84
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 86
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void
.end method
