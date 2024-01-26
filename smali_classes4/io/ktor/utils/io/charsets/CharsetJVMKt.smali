.class public final Lio/ktor/utils/io/charsets/CharsetJVMKt;
.super Ljava/lang/Object;
.source "CharsetJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharsetJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharsetJVM.kt\nio/ktor/utils/io/charsets/CharsetJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 11 Input.kt\nio/ktor/utils/io/core/Input\n+ 12 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n*L\n1#1,344:1\n1#2:345\n1#2:359\n1#2:366\n1#2:472\n1#2:503\n1#2:533\n1#2:550\n1#2:579\n1#2:637\n104#3,5:346\n109#3,3:356\n113#3:360\n41#3:363\n42#3:365\n43#3,7:367\n104#3,5:459\n109#3,3:469\n113#3:473\n104#3,5:490\n109#3,3:500\n113#3:504\n51#3,6:514\n104#3,5:520\n109#3,3:530\n113#3:534\n88#3,5:537\n93#3,3:547\n97#3:551\n88#3,5:566\n93#3,3:576\n97#3:580\n88#3,5:624\n93#3,3:634\n97#3:638\n382#4,5:351\n387#4,2:361\n365#4,5:379\n370#4,2:449\n382#4,5:464\n387#4,2:474\n382#4,5:495\n387#4,2:505\n382#4,5:525\n387#4,2:535\n365#4,5:542\n370#4,2:552\n365#4,5:571\n370#4,2:581\n365#4,5:629\n370#4,2:639\n71#5:364\n66#5:562\n56#5:594\n66#5:620\n56#5:652\n121#6,5:374\n126#6,2:384\n128#6,61:388\n191#6:451\n81#7:386\n26#8:387\n487#9,7:452\n494#9,7:476\n487#9,7:483\n494#9,7:507\n843#10,8:554\n853#10,3:563\n857#10,11:583\n868#10,15:595\n843#10,8:612\n853#10,3:621\n857#10,11:641\n868#10,15:653\n74#11:610\n11#12:611\n*S KotlinDebug\n*F\n+ 1 CharsetJVM.kt\nio/ktor/utils/io/charsets/CharsetJVMKt\n*L\n47#1:359\n65#1:366\n91#1:472\n112#1:503\n130#1:533\n148#1:550\n189#1:579\n278#1:637\n47#1:346,5\n47#1:356,3\n47#1:360\n65#1:363\n65#1:365\n65#1:367,7\n91#1:459,5\n91#1:469,3\n91#1:473\n112#1:490,5\n112#1:500,3\n112#1:504\n65#1:514,6\n130#1:520,5\n130#1:530,3\n130#1:534\n148#1:537,5\n148#1:547,3\n148#1:551\n189#1:566,5\n189#1:576,3\n189#1:580\n278#1:624,5\n278#1:634,3\n278#1:638\n47#1:351,5\n47#1:361,2\n77#1:379,5\n77#1:449,2\n91#1:464,5\n91#1:474,2\n112#1:495,5\n112#1:505,2\n130#1:525,5\n130#1:535,2\n148#1:542,5\n148#1:552,2\n189#1:571,5\n189#1:581,2\n278#1:629,5\n278#1:639,2\n65#1:364\n185#1:562\n185#1:594\n275#1:620\n275#1:652\n77#1:374,5\n77#1:384,2\n77#1:388,61\n77#1:451\n77#1:386\n77#1:387\n90#1:452,7\n90#1:476,7\n111#1:483,7\n111#1:507,7\n185#1:554,8\n185#1:563,3\n185#1:583,11\n185#1:595,15\n275#1:612,8\n275#1:621,3\n275#1:641,11\n275#1:653,15\n231#1:610\n239#1:611\n*E\n"
.end annotation


# static fields
.field private static final EmptyCharBuffer:Ljava/nio/CharBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 342
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    sput-object v1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyCharBuffer:Ljava/nio/CharBuffer;

    .line 343
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method public static final encodeComplete(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Buffer;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    .line 109
    invoke-static {v0, v1, v2}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    sget-object v1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyCharBuffer:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "result"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p0

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 387
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return p0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer\'s limit change is not allowed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p2

    .line 386
    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 109
    invoke-static {p3, v0, v1}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p3, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "result"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 111
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    .line 387
    invoke-virtual {p4, p0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 52
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p0

    sub-int/2addr p2, p0

    return p2

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer\'s limit change is not allowed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "input as java.lang.String).getBytes(charset())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 26
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "input.substring(fromInde\u2026ring).getBytes(charset())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 29
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArraySlow(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method private static final encodeToByteArraySlow(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B
    .locals 1

    .line 33
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    move-object p2, p1

    :cond_1
    if-nez p2, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p2, p1, [B

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_2
    return-object p2
.end method

.method private static final throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V
    .locals 1

    .line 323
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 325
    new-instance v0, Lio/ktor/utils/io/charsets/MalformedInputException;

    invoke-virtual {p0}, Ljava/nio/charset/MalformedInputException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Failed to decode bytes"

    :cond_0
    invoke-direct {v0, p0}, Lio/ktor/utils/io/charsets/MalformedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
