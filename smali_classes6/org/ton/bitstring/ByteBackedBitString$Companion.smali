.class public final Lorg/ton/bitstring/ByteBackedBitString$Companion;
.super Ljava/lang/Object;
.source "ByteBackedBitString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/bitstring/ByteBackedBitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/bitstring/ByteBackedBitString$Companion;-><init>()V

    return-void
.end method

.method private final bytesSize(I)I
    .locals 1

    .line 192
    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected final constructByteArray(I)[B
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->bytesSize(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method

.method protected final constructByteArray([BI)[B
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p2}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->bytesSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(this, newSize)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final expandByteArray([BI)[B
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p2}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->bytesSize(I)I

    move-result v0

    .line 172
    array-length v1, p1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1, p2}, Lorg/ton/bitstring/ByteBackedBitString;->constructByteArray([BI)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected final get([BI)Z
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    div-int/lit8 v0, p2, 0x8

    .line 187
    rem-int/lit8 p2, p2, 0x8

    rsub-int/lit8 p2, p2, 0x7

    const/4 v1, 0x1

    shl-int p2, v1, p2

    int-to-byte p2, p2

    .line 188
    aget-byte p1, p1, v0

    and-int/2addr p1, p2

    int-to-byte p1, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final of(I)Lorg/ton/bitstring/ByteBackedBitString;
    .locals 2

    .line 156
    new-instance v0, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-static {p1}, Lorg/ton/bitstring/ByteBackedBitString;->constructByteArray(I)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/ton/bitstring/ByteBackedBitString;-><init>(I[B)V

    return-object v0
.end method

.method public final of([BI)Lorg/ton/bitstring/ByteBackedBitString;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-static {p1, p2}, Lorg/ton/bitstring/ByteBackedBitString;->constructByteArray([BI)[B

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/ton/bitstring/ByteBackedBitString;-><init>(I[B)V

    return-object v0
.end method
