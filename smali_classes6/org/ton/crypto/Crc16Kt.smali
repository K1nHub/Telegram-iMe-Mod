.class public final Lorg/ton/crypto/Crc16Kt;
.super Ljava/lang/Object;
.source "crc16.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncrc16.kt\nKotlin\n*S Kotlin\n*F\n+ 1 crc16.kt\norg/ton/crypto/Crc16Kt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,276:1\n13579#2:277\n13586#2,2:278\n13580#2:280\n*S KotlinDebug\n*F\n+ 1 crc16.kt\norg/ton/crypto/Crc16Kt\n*L\n268#1:277\n269#1:278,2\n268#1:280\n*E\n"
.end annotation


# static fields
.field private static final CRC16_TABLE:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [S

    .line 6
    fill-array-data v0, :array_0

    .line 5
    sput-object v0, Lorg/ton/crypto/Crc16Kt;->CRC16_TABLE:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1021s
        0x2042s
        0x3063s
        0x4084s
        0x50a5s
        0x60c6s
        0x70e7s
        -0x7ef8s
        -0x6ed7s
        -0x5eb6s
        -0x4e95s
        -0x3e74s
        -0x2e53s
        -0x1e32s
        -0xe11s
        0x1231s
        0x210s
        0x3273s
        0x2252s
        0x52b5s
        0x4294s
        0x72f7s
        0x62d6s
        -0x6cc7s
        -0x7ce8s
        -0x4c85s
        -0x5ca6s
        -0x2c43s
        -0x3c64s
        -0xc01s
        -0x1c22s
        0x2462s
        0x3443s
        0x420s
        0x1401s
        0x64e6s
        0x74c7s
        0x44a4s
        0x5485s
        -0x5a96s
        -0x4ab5s
        -0x7ad8s
        -0x6af7s
        -0x1a12s
        -0xa31s
        -0x3a54s
        -0x2a73s
        0x3653s
        0x2672s
        0x1611s
        0x630s
        0x76d7s
        0x66f6s
        0x5695s
        0x46b4s
        -0x48a5s
        -0x5886s
        -0x68e7s
        -0x78c8s
        -0x821s
        -0x1802s
        -0x2863s
        -0x3844s
        0x48c4s
        0x58e5s
        0x6886s
        0x78a7s
        0x840s
        0x1861s
        0x2802s
        0x3823s
        -0x3634s
        -0x2613s
        -0x1672s
        -0x651s
        -0x76b8s
        -0x6697s
        -0x56f6s
        -0x46d5s
        0x5af5s
        0x4ad4s
        0x7ab7s
        0x6a96s
        0x1a71s
        0xa50s
        0x3a33s
        0x2a12s
        -0x2403s
        -0x3424s
        -0x441s
        -0x1462s
        -0x6487s
        -0x74a8s
        -0x44c5s
        -0x54e6s
        0x6ca6s
        0x7c87s
        0x4ce4s
        0x5cc5s
        0x2c22s
        0x3c03s
        0xc60s
        0x1c41s
        -0x1252s
        -0x271s
        -0x3214s
        -0x2233s
        -0x52d6s
        -0x42f5s
        -0x7298s
        -0x62b7s
        0x7e97s
        0x6eb6s
        0x5ed5s
        0x4ef4s
        0x3e13s
        0x2e32s
        0x1e51s
        0xe70s
        -0x61s
        -0x1042s
        -0x2023s
        -0x3004s
        -0x40e5s
        -0x50c6s
        -0x60a7s
        -0x7088s
        -0x6e78s
        -0x7e57s
        -0x4e36s
        -0x5e15s
        -0x2ef4s
        -0x3ed3s
        -0xeb2s
        -0x1e91s
        0x1080s
        0xa1s
        0x30c2s
        0x20e3s
        0x5004s
        0x4025s
        0x7046s
        0x6067s
        -0x7c47s
        -0x6c68s
        -0x5c05s
        -0x4c26s
        -0x3cc3s
        -0x2ce4s
        -0x1c81s
        -0xca2s
        0x2b1s
        0x1290s
        0x22f3s
        0x32d2s
        0x4235s
        0x5214s
        0x6277s
        0x7256s
        -0x4a16s
        -0x5a35s
        -0x6a58s
        -0x7a77s
        -0xa92s
        -0x1ab1s
        -0x2ad4s
        -0x3af3s
        0x34e2s
        0x24c3s
        0x14a0s
        0x481s
        0x7466s
        0x6447s
        0x5424s
        0x4405s
        -0x5825s
        -0x4806s
        -0x7867s
        -0x6848s
        -0x18a1s
        -0x882s
        -0x38e3s
        -0x28c4s
        0x26d3s
        0x36f2s
        0x691s
        0x16b0s
        0x6657s
        0x7676s
        0x4615s
        0x5634s
        -0x26b4s
        -0x3693s
        -0x6f2s
        -0x16d1s
        -0x6638s
        -0x7617s
        -0x4676s
        -0x5655s
        0x5844s
        0x4865s
        0x7806s
        0x6827s
        0x18c0s
        0x8e1s
        0x3882s
        0x28a3s
        -0x3483s
        -0x24a4s
        -0x14c1s
        -0x4e2s
        -0x7407s
        -0x6428s
        -0x5445s
        -0x4466s
        0x4a75s
        0x5a54s
        0x6a37s
        0x7a16s
        0xaf1s
        0x1ad0s
        0x2ab3s
        0x3a92s
        -0x2d2s
        -0x12f1s
        -0x2294s
        -0x32b3s
        -0x4256s
        -0x5275s
        -0x6218s
        -0x7237s
        0x7c26s
        0x6c07s
        0x5c64s
        0x4c45s
        0x3ca2s
        0x2c83s
        0x1ce0s
        0xcc1s
        -0x10e1s
        -0xc2s
        -0x30a3s
        -0x2084s
        -0x5065s
        -0x4046s
        -0x7027s
        -0x6008s
        0x6e17s
        0x7e36s
        0x4e55s
        0x5e74s
        0x2e93s
        0x3eb2s
        0xed1s
        0x1ef0s
    .end array-data
.end method

.method public static final varargs crc16([[B)I
    .locals 10

    const-string v0, "byteArrays"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13579
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const v4, 0xffff

    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    .line 13586
    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget-byte v8, v5, v7

    and-int/2addr v3, v4

    ushr-int/lit8 v9, v3, 0x8

    xor-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    .line 271
    sget-object v9, Lorg/ton/crypto/Crc16Kt;->CRC16_TABLE:[S

    invoke-static {v9, v8}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v8

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    invoke-static {v3}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v3

    xor-int/2addr v3, v8

    int-to-short v3, v3

    invoke-static {v3}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int p0, v3, v4

    return p0
.end method
