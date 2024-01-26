.class public final Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;
.super Ljava/lang/Object;
.source "ByteBackedMutableBitString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/bitstring/ByteBackedMutableBitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBackedMutableBitString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBackedMutableBitString.kt\norg/ton/bitstring/ByteBackedMutableBitString$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ByteBackedBitString.kt\norg/ton/bitstring/ByteBackedBitStringKt\n*L\n1#1,161:1\n1864#2,3:162\n197#3:165\n198#3:166\n*S KotlinDebug\n*F\n+ 1 ByteBackedMutableBitString.kt\norg/ton/bitstring/ByteBackedMutableBitString$Companion\n*L\n140#1:162,3\n149#1:165\n150#1:166\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;-><init>()V

    return-void
.end method

.method public static synthetic of$default(Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;IILjava/lang/Object;)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;->of(I)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final of(I)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 2

    .line 124
    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-static {p1}, Lorg/ton/bitstring/ByteBackedBitString;->constructByteArray(I)[B

    move-result-object v0

    .line 125
    new-instance v1, Lorg/ton/bitstring/ByteBackedMutableBitString;

    invoke-direct {v1, v0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;-><init>([BI)V

    return-object v1
.end method

.method protected final set([BIZ)Z
    .locals 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    div-int/lit8 v0, p2, 0x8

    .line 198
    rem-int/lit8 v1, p2, 0x8

    rsub-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    shl-int v1, v2, v1

    int-to-byte v1, v1

    .line 151
    sget-object v2, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-static {p1, p2}, Lorg/ton/bitstring/ByteBackedBitString;->get([BI)Z

    move-result p2

    if-eqz p3, :cond_0

    .line 153
    aget-byte p3, p1, v0

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    goto :goto_0

    .line 155
    :cond_0
    aget-byte p3, p1, v0

    not-int v1, v1

    int-to-byte v1, v1

    and-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    :goto_0
    return p2
.end method
