.class public final Lio/ktor/utils/io/core/ByteBuffersKt;
.super Ljava/lang/Object;
.source "ByteBuffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBuffers.kt\nio/ktor/utils/io/core/ByteBuffersKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Output.kt\nio/ktor/utils/io/core/Output\n+ 4 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,114:1\n79#1,5:116\n84#1:124\n66#2:115\n364#3,3:121\n367#3,5:142\n364#3,3:147\n367#3:167\n369#3,3:169\n104#4,5:125\n109#4,3:135\n113#4:139\n104#4,5:150\n109#4,3:160\n113#4:164\n88#4,5:180\n93#4,3:190\n97#4:194\n88#4,5:216\n93#4,3:226\n97#4:230\n382#5,5:130\n387#5,2:140\n382#5,5:155\n387#5,2:165\n365#5,5:185\n370#5,2:195\n365#5,5:221\n370#5,2:231\n1#6:138\n1#6:163\n1#6:168\n1#6:193\n1#6:229\n1#6:244\n8#7,8:172\n17#7,11:197\n8#7,8:208\n17#7,11:233\n*S KotlinDebug\n*F\n+ 1 ByteBuffers.kt\nio/ktor/utils/io/core/ByteBuffersKt\n*L\n62#1:116,5\n62#1:124\n30#1:115\n62#1:121,3\n62#1:142,5\n83#1:147,3\n83#1:167\n83#1:169,3\n62#1:125,5\n62#1:135,3\n62#1:139\n84#1:150,5\n84#1:160,3\n84#1:164\n95#1:180,5\n95#1:190,3\n95#1:194\n107#1:216,5\n107#1:226,3\n107#1:230\n62#1:130,5\n62#1:140,2\n84#1:155,5\n84#1:165,2\n95#1:185,5\n95#1:195,2\n107#1:221,5\n107#1:231,2\n62#1:138\n84#1:163\n83#1:168\n95#1:193\n107#1:229\n94#1:172,8\n94#1:197,11\n106#1:208,8\n106#1:233,11\n*E\n"
.end annotation


# direct methods
.method private static final readAsMuchAsPossible(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;I)I
    .locals 4

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 66
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 33
    invoke-static {v0, p1, v2}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    .line 34
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    add-int/2addr p2, v2

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v0, p1, v1}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    .line 39
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    add-int/2addr p2, v1

    return p2
.end method

.method public static final readFully(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/ByteBuffersKt;->readAsMuchAsPossible(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;I)I

    move-result p0

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 20
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough data in packet to fill buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more bytes required"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
