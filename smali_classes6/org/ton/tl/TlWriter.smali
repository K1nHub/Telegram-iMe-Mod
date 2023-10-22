.class public final Lorg/ton/tl/TlWriter;
.super Ljava/lang/Object;
.source "TlWriter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlWriter.kt\norg/ton/tl/TlWriter\n+ 2 UnsignedTypes.kt\nio/ktor/utils/io/core/UnsignedTypesKt\n*L\n1#1,97:1\n39#2,2:98\n39#2,2:100\n39#2,2:102\n39#2,2:104\n39#2,2:106\n39#2,2:108\n39#2,2:110\n39#2,2:112\n39#2,2:114\n39#2,2:116\n*S KotlinDebug\n*F\n+ 1 TlWriter.kt\norg/ton/tl/TlWriter\n*L\n37#1:98,2\n40#1:100,2\n41#1:102,2\n42#1:104,2\n43#1:106,2\n46#1:108,2\n47#1:110,2\n48#1:112,2\n49#1:114,2\n50#1:116,2\n*E\n"
.end annotation


# instance fields
.field private final output:Lio/ktor/utils/io/core/Output;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/core/Output;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    return-void
.end method

.method public static synthetic writeBytes$default(Lorg/ton/tl/TlWriter;Lorg/ton/tl/ByteString;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 30
    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getSize()I

    move-result p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/ton/tl/TlWriter;->writeBytes(Lorg/ton/tl/ByteString;II)V

    return-void
.end method

.method public static synthetic writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 34
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/ton/tl/TlWriter;->writeBytes([BII)V

    return-void
.end method


# virtual methods
.method public final writeBytes(Lorg/ton/tl/ByteString;II)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getData$ton_kotlin_tl()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/ton/tl/TlWriter;->writeBytes([BII)V

    return-void
.end method

.method public final writeBytes([BII)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xfe

    if-ge p3, v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    int-to-byte v2, p3

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    add-int/lit8 v1, p3, 0x1

    goto/16 :goto_0

    :cond_0
    const/high16 v1, 0x1000000

    if-ge p3, v1, :cond_1

    .line 40
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    const/4 v2, -0x2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 41
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 42
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 43
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    shr-int/lit8 v2, p3, 0x10

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    add-int/lit8 v1, p3, 0x4

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    if-ge p3, v1, :cond_3

    .line 46
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    const/4 v2, -0x1

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 47
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 48
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 49
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 50
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 51
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 52
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 53
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    add-int/lit8 v1, p3, 0x8

    .line 58
    :goto_0
    iget-object v2, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-static {v2, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    :goto_1
    add-int/lit8 p1, v1, 0x1

    .line 59
    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    .line 60
    iget-object p2, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-virtual {p2, v0}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    move v1, p1

    goto :goto_1

    :cond_2
    return-void

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too big byte array: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInt(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeIntLittleEndian(Lio/ktor/utils/io/core/Output;I)V

    return-void
.end method

.method public final writeLong(J)V
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeLongLittleEndian(Lio/ktor/utils/io/core/Output;J)V

    return-void
.end method

.method public final writeRaw(Lorg/ton/tl/ByteString;)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getData$ton_kotlin_tl()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    return-void
.end method

.method public final writeRaw([B)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lorg/ton/tl/TlWriter;->output:Lio/ktor/utils/io/core/Output;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    return-void
.end method
