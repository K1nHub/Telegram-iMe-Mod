.class public final Lorg/ton/crypto/Crc32Kt;
.super Ljava/lang/Object;
.source "crc32.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncrc32.kt\nKotlin\n*S Kotlin\n*F\n+ 1 crc32.kt\norg/ton/crypto/Crc32Kt\n*L\n1#1,93:1\n54#1,5:94\n*S KotlinDebug\n*F\n+ 1 crc32.kt\norg/ton/crypto/Crc32Kt\n*L\n91#1:94,5\n*E\n"
.end annotation


# static fields
.field private static final CASTAGNOLI_TABLE$delegate:Lkotlin/Lazy;

.field private static final IEEE_TABLE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lorg/ton/crypto/Crc32Kt$IEEE_TABLE$2;->INSTANCE:Lorg/ton/crypto/Crc32Kt$IEEE_TABLE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/crypto/Crc32Kt;->IEEE_TABLE$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lorg/ton/crypto/Crc32Kt$CASTAGNOLI_TABLE$2;->INSTANCE:Lorg/ton/crypto/Crc32Kt$CASTAGNOLI_TABLE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/crypto/Crc32Kt;->CASTAGNOLI_TABLE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$crc32slicingTable(I)[[I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/Crc32Kt;->crc32slicingTable(I)[[I

    move-result-object p0

    return-object p0
.end method

.method private static final crc32slicingTable(I)[[I
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    if-ge v3, v0, :cond_0

    new-array v4, v4, [I

    .line 35
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_0
    aget-object v3, v1, v2

    invoke-static {p0, v3}, Lorg/ton/crypto/Crc32Kt;->crc32table(I[I)[I

    move p0, v2

    :goto_1
    if-ge p0, v4, :cond_2

    .line 38
    aget-object v3, v1, v2

    aget v3, v3, p0

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v0, :cond_1

    .line 40
    aget-object v6, v1, v2

    and-int/lit16 v7, v3, 0xff

    aget v6, v6, v7

    ushr-int/2addr v3, v0

    xor-int/2addr v3, v6

    .line 41
    aget-object v6, v1, v5

    aput v3, v6, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private static final crc32table(I[I)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    move v2, v0

    move v3, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    ushr-int/lit8 v3, v3, 0x1

    xor-int/2addr v3, p0

    goto :goto_2

    :cond_0
    ushr-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_1
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static final getCASTAGNOLI_TABLE()[[I
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/crypto/Crc32Kt;->CASTAGNOLI_TABLE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method
