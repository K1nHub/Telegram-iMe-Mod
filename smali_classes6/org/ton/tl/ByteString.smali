.class public Lorg/ton/tl/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tl/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ton/tl/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\norg/ton/tl/ByteString\n+ 2 hex.kt\norg/ton/crypto/HexKt\n*L\n1#1,101:1\n54#2:102\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\norg/ton/tl/ByteString\n*L\n72#1:102\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lorg/ton/tl/ByteStringSerializer;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/tl/ByteString$Companion;


# instance fields
.field private final data:[B

.field private final hashCode$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/tl/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/tl/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ton/tl/ByteString;->data:[B

    .line 20
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/tl/ByteString$hashCode$2;

    invoke-direct {v0, p0}, Lorg/ton/tl/ByteString$hashCode$2;-><init>(Lorg/ton/tl/ByteString;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tl/ByteString;->hashCode$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getHashCode()I
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/tl/ByteString;->hashCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lorg/ton/tl/ByteString;

    invoke-virtual {p0, p1}, Lorg/ton/tl/ByteString;->compareTo(Lorg/ton/tl/ByteString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ton/tl/ByteString;)I
    .locals 9

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lorg/ton/tl/ByteString;->getSize()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getSize()I

    move-result v1

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ge v4, v2, :cond_2

    .line 49
    invoke-virtual {p0, v4}, Lorg/ton/tl/ByteString;->getByte(I)B

    move-result v7

    and-int/2addr v7, v6

    int-to-byte v7, v7

    .line 50
    invoke-virtual {p1, v4}, Lorg/ton/tl/ByteString;->getByte(I)B

    move-result v8

    and-int/2addr v8, v6

    int-to-byte v8, v8

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_1

    move v5, v6

    :cond_1
    return v5

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    move v5, v6

    :cond_4
    return v5
.end method

.method public final encodeHex()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    invoke-static {v0}, Lorg/ton/crypto/HexKt;->hex([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 63
    :cond_0
    instance-of v0, p1, Lorg/ton/tl/ByteString;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    check-cast p1, Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/tl/ByteString;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final getByte(I)B
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final getData$ton_kotlin_tl()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/ton/tl/ByteString;->getHashCode()I

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/ton/tl/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x5d

    const/16 v2, 0x40

    if-gt v0, v2, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/tl/ByteString;->encodeHex()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ton/tl/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ton/tl/ByteString;->data:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Lorg/ton/crypto/HexKt;->hex([B)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
