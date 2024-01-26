.class public final Lorg/ton/bitstring/EmptyBitString;
.super Ljava/lang/Object;
.source "EmptyBitString.kt"

# interfaces
.implements Lorg/ton/bitstring/BitString;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmptyBitString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmptyBitString.kt\norg/ton/bitstring/EmptyBitString\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,57:1\n13#2:58\n14#2:59\n15#2:60\n9#2,2:61\n10#2:63\n*S KotlinDebug\n*F\n+ 1 EmptyBitString.kt\norg/ton/bitstring/EmptyBitString\n*L\n10#1:58\n12#1:59\n14#1:60\n16#1:61,2\n18#1:63\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/bitstring/EmptyBitString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/bitstring/EmptyBitString;

    invoke-direct {v0}, Lorg/ton/bitstring/EmptyBitString;-><init>()V

    sput-object v0, Lorg/ton/bitstring/EmptyBitString;->INSTANCE:Lorg/ton/bitstring/EmptyBitString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commonPrefixWith(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lorg/ton/bitstring/BitString$DefaultImpls;->commonPrefixWith(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lorg/ton/bitstring/BitString;

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/EmptyBitString;->compareTo(Lorg/ton/bitstring/BitString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ton/bitstring/BitString;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 48
    :cond_1
    instance-of v2, p1, Lorg/ton/bitstring/BitString;

    if-nez v2, :cond_2

    return v1

    .line 49
    :cond_2
    check-cast p1, Lorg/ton/bitstring/BitString;

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public get(I)Z
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/ton/bitstring/EmptyBitString$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/bitstring/EmptyBitString$iterator$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lorg/ton/bitstring/BitString;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-direct {v1, p1, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public slice(Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;
    .locals 1

    const-string v0, "indices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBinary()Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p0}, Lorg/ton/bitstring/BitString$DefaultImpls;->toBinary(Lorg/ton/bitstring/BitString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBitString()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 3
    invoke-static {p0}, Lorg/ton/bitstring/BitString$DefaultImpls;->toBitString(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;

    move-result-object v0

    return-object v0
.end method

.method public toBooleanArray()[Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "x{}"

    return-object v0
.end method
