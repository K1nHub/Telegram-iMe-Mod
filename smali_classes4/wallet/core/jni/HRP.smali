.class public final enum Lwallet/core/jni/HRP;
.super Ljava/lang/Enum;
.source "HRP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/HRP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/HRP;

.field public static final enum AGORIC:Lwallet/core/jni/HRP;

.field public static final enum BANDCHAIN:Lwallet/core/jni/HRP;

.field public static final enum BINANCE:Lwallet/core/jni/HRP;

.field public static final enum BITCOIN:Lwallet/core/jni/HRP;

.field public static final enum BITCOINCASH:Lwallet/core/jni/HRP;

.field public static final enum BITCOINGOLD:Lwallet/core/jni/HRP;

.field public static final enum BLUZELLE:Lwallet/core/jni/HRP;

.field public static final enum CARDANO:Lwallet/core/jni/HRP;

.field public static final enum COSMOS:Lwallet/core/jni/HRP;

.field public static final enum CRYPTOORG:Lwallet/core/jni/HRP;

.field public static final enum DIGIBYTE:Lwallet/core/jni/HRP;

.field public static final enum ECASH:Lwallet/core/jni/HRP;

.field public static final enum GROESTLCOIN:Lwallet/core/jni/HRP;

.field public static final enum HARMONY:Lwallet/core/jni/HRP;

.field public static final enum IOTEX:Lwallet/core/jni/HRP;

.field public static final enum KAVA:Lwallet/core/jni/HRP;

.field public static final enum LITECOIN:Lwallet/core/jni/HRP;

.field public static final enum MONACOIN:Lwallet/core/jni/HRP;

.field public static final enum MULTIVERSX:Lwallet/core/jni/HRP;

.field public static final enum NATIVEEVMOS:Lwallet/core/jni/HRP;

.field public static final enum NATIVEINJECTIVE:Lwallet/core/jni/HRP;

.field public static final enum NERVOS:Lwallet/core/jni/HRP;

.field public static final enum OASIS:Lwallet/core/jni/HRP;

.field public static final enum OSMOSIS:Lwallet/core/jni/HRP;

.field public static final enum QTUM:Lwallet/core/jni/HRP;

.field public static final enum SECRET:Lwallet/core/jni/HRP;

.field public static final enum TERRA:Lwallet/core/jni/HRP;

.field public static final enum TERRAV2:Lwallet/core/jni/HRP;

.field public static final enum THORCHAIN:Lwallet/core/jni/HRP;

.field public static final enum UNKNOWN:Lwallet/core/jni/HRP;

.field public static final enum VIACOIN:Lwallet/core/jni/HRP;

.field public static final enum ZILLIQA:Lwallet/core/jni/HRP;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 19
    new-instance v0, Lwallet/core/jni/HRP;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/HRP;->UNKNOWN:Lwallet/core/jni/HRP;

    .line 20
    new-instance v1, Lwallet/core/jni/HRP;

    const-string v3, "BITCOIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/HRP;->BITCOIN:Lwallet/core/jni/HRP;

    .line 21
    new-instance v3, Lwallet/core/jni/HRP;

    const-string v5, "LITECOIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/HRP;->LITECOIN:Lwallet/core/jni/HRP;

    .line 22
    new-instance v5, Lwallet/core/jni/HRP;

    const-string v7, "VIACOIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/HRP;->VIACOIN:Lwallet/core/jni/HRP;

    .line 23
    new-instance v7, Lwallet/core/jni/HRP;

    const-string v9, "GROESTLCOIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/HRP;->GROESTLCOIN:Lwallet/core/jni/HRP;

    .line 24
    new-instance v9, Lwallet/core/jni/HRP;

    const-string v11, "DIGIBYTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/HRP;->DIGIBYTE:Lwallet/core/jni/HRP;

    .line 25
    new-instance v11, Lwallet/core/jni/HRP;

    const-string v13, "MONACOIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/HRP;->MONACOIN:Lwallet/core/jni/HRP;

    .line 26
    new-instance v13, Lwallet/core/jni/HRP;

    const-string v15, "COSMOS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/HRP;->COSMOS:Lwallet/core/jni/HRP;

    .line 27
    new-instance v15, Lwallet/core/jni/HRP;

    const-string v14, "BITCOINCASH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/HRP;->BITCOINCASH:Lwallet/core/jni/HRP;

    .line 28
    new-instance v14, Lwallet/core/jni/HRP;

    const-string v12, "BITCOINGOLD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/HRP;->BITCOINGOLD:Lwallet/core/jni/HRP;

    .line 29
    new-instance v12, Lwallet/core/jni/HRP;

    const-string v10, "IOTEX"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/HRP;->IOTEX:Lwallet/core/jni/HRP;

    .line 30
    new-instance v10, Lwallet/core/jni/HRP;

    const-string v8, "NERVOS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/HRP;->NERVOS:Lwallet/core/jni/HRP;

    .line 31
    new-instance v8, Lwallet/core/jni/HRP;

    const-string v6, "ZILLIQA"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/HRP;->ZILLIQA:Lwallet/core/jni/HRP;

    .line 32
    new-instance v6, Lwallet/core/jni/HRP;

    const-string v4, "TERRA"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/HRP;->TERRA:Lwallet/core/jni/HRP;

    .line 33
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v2, "CRYPTOORG"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->CRYPTOORG:Lwallet/core/jni/HRP;

    .line 34
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "KAVA"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->KAVA:Lwallet/core/jni/HRP;

    .line 35
    new-instance v6, Lwallet/core/jni/HRP;

    const-string v4, "OASIS"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/HRP;->OASIS:Lwallet/core/jni/HRP;

    .line 36
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v2, "BLUZELLE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->BLUZELLE:Lwallet/core/jni/HRP;

    .line 37
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "BANDCHAIN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->BANDCHAIN:Lwallet/core/jni/HRP;

    .line 38
    new-instance v6, Lwallet/core/jni/HRP;

    const-string v4, "MULTIVERSX"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/HRP;->MULTIVERSX:Lwallet/core/jni/HRP;

    .line 39
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v2, "SECRET"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->SECRET:Lwallet/core/jni/HRP;

    .line 40
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "AGORIC"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->AGORIC:Lwallet/core/jni/HRP;

    .line 41
    new-instance v6, Lwallet/core/jni/HRP;

    const-string v4, "BINANCE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/HRP;->BINANCE:Lwallet/core/jni/HRP;

    .line 42
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v4, "ECASH"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->ECASH:Lwallet/core/jni/HRP;

    .line 43
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v6, "THORCHAIN"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->THORCHAIN:Lwallet/core/jni/HRP;

    .line 44
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "HARMONY"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->HARMONY:Lwallet/core/jni/HRP;

    .line 45
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v6, "CARDANO"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->CARDANO:Lwallet/core/jni/HRP;

    .line 46
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "QTUM"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->QTUM:Lwallet/core/jni/HRP;

    .line 47
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v6, "NATIVEINJECTIVE"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->NATIVEINJECTIVE:Lwallet/core/jni/HRP;

    .line 48
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "OSMOSIS"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->OSMOSIS:Lwallet/core/jni/HRP;

    .line 49
    new-instance v4, Lwallet/core/jni/HRP;

    const-string v6, "TERRAV2"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HRP;->TERRAV2:Lwallet/core/jni/HRP;

    .line 50
    new-instance v2, Lwallet/core/jni/HRP;

    const-string v6, "NATIVEEVMOS"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lwallet/core/jni/HRP;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HRP;->NATIVEEVMOS:Lwallet/core/jni/HRP;

    const/16 v4, 0x20

    new-array v4, v4, [Lwallet/core/jni/HRP;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    .line 18
    sput-object v4, Lwallet/core/jni/HRP;->$VALUES:[Lwallet/core/jni/HRP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lwallet/core/jni/HRP;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/HRP;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_0
    sget-object p0, Lwallet/core/jni/HRP;->NATIVEEVMOS:Lwallet/core/jni/HRP;

    return-object p0

    .line 90
    :pswitch_1
    sget-object p0, Lwallet/core/jni/HRP;->TERRAV2:Lwallet/core/jni/HRP;

    return-object p0

    .line 89
    :pswitch_2
    sget-object p0, Lwallet/core/jni/HRP;->OSMOSIS:Lwallet/core/jni/HRP;

    return-object p0

    .line 88
    :pswitch_3
    sget-object p0, Lwallet/core/jni/HRP;->NATIVEINJECTIVE:Lwallet/core/jni/HRP;

    return-object p0

    .line 87
    :pswitch_4
    sget-object p0, Lwallet/core/jni/HRP;->QTUM:Lwallet/core/jni/HRP;

    return-object p0

    .line 86
    :pswitch_5
    sget-object p0, Lwallet/core/jni/HRP;->CARDANO:Lwallet/core/jni/HRP;

    return-object p0

    .line 85
    :pswitch_6
    sget-object p0, Lwallet/core/jni/HRP;->HARMONY:Lwallet/core/jni/HRP;

    return-object p0

    .line 84
    :pswitch_7
    sget-object p0, Lwallet/core/jni/HRP;->THORCHAIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 83
    :pswitch_8
    sget-object p0, Lwallet/core/jni/HRP;->ECASH:Lwallet/core/jni/HRP;

    return-object p0

    .line 82
    :pswitch_9
    sget-object p0, Lwallet/core/jni/HRP;->BINANCE:Lwallet/core/jni/HRP;

    return-object p0

    .line 81
    :pswitch_a
    sget-object p0, Lwallet/core/jni/HRP;->AGORIC:Lwallet/core/jni/HRP;

    return-object p0

    .line 80
    :pswitch_b
    sget-object p0, Lwallet/core/jni/HRP;->SECRET:Lwallet/core/jni/HRP;

    return-object p0

    .line 79
    :pswitch_c
    sget-object p0, Lwallet/core/jni/HRP;->MULTIVERSX:Lwallet/core/jni/HRP;

    return-object p0

    .line 78
    :pswitch_d
    sget-object p0, Lwallet/core/jni/HRP;->BANDCHAIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 77
    :pswitch_e
    sget-object p0, Lwallet/core/jni/HRP;->BLUZELLE:Lwallet/core/jni/HRP;

    return-object p0

    .line 76
    :pswitch_f
    sget-object p0, Lwallet/core/jni/HRP;->OASIS:Lwallet/core/jni/HRP;

    return-object p0

    .line 75
    :pswitch_10
    sget-object p0, Lwallet/core/jni/HRP;->KAVA:Lwallet/core/jni/HRP;

    return-object p0

    .line 74
    :pswitch_11
    sget-object p0, Lwallet/core/jni/HRP;->CRYPTOORG:Lwallet/core/jni/HRP;

    return-object p0

    .line 73
    :pswitch_12
    sget-object p0, Lwallet/core/jni/HRP;->TERRA:Lwallet/core/jni/HRP;

    return-object p0

    .line 72
    :pswitch_13
    sget-object p0, Lwallet/core/jni/HRP;->ZILLIQA:Lwallet/core/jni/HRP;

    return-object p0

    .line 71
    :pswitch_14
    sget-object p0, Lwallet/core/jni/HRP;->NERVOS:Lwallet/core/jni/HRP;

    return-object p0

    .line 70
    :pswitch_15
    sget-object p0, Lwallet/core/jni/HRP;->IOTEX:Lwallet/core/jni/HRP;

    return-object p0

    .line 69
    :pswitch_16
    sget-object p0, Lwallet/core/jni/HRP;->BITCOINGOLD:Lwallet/core/jni/HRP;

    return-object p0

    .line 68
    :pswitch_17
    sget-object p0, Lwallet/core/jni/HRP;->BITCOINCASH:Lwallet/core/jni/HRP;

    return-object p0

    .line 67
    :pswitch_18
    sget-object p0, Lwallet/core/jni/HRP;->COSMOS:Lwallet/core/jni/HRP;

    return-object p0

    .line 66
    :pswitch_19
    sget-object p0, Lwallet/core/jni/HRP;->MONACOIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 65
    :pswitch_1a
    sget-object p0, Lwallet/core/jni/HRP;->DIGIBYTE:Lwallet/core/jni/HRP;

    return-object p0

    .line 64
    :pswitch_1b
    sget-object p0, Lwallet/core/jni/HRP;->GROESTLCOIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 63
    :pswitch_1c
    sget-object p0, Lwallet/core/jni/HRP;->VIACOIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 62
    :pswitch_1d
    sget-object p0, Lwallet/core/jni/HRP;->LITECOIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 61
    :pswitch_1e
    sget-object p0, Lwallet/core/jni/HRP;->BITCOIN:Lwallet/core/jni/HRP;

    return-object p0

    .line 60
    :pswitch_1f
    sget-object p0, Lwallet/core/jni/HRP;->UNKNOWN:Lwallet/core/jni/HRP;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/HRP;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lwallet/core/jni/HRP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/HRP;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/HRP;
    .locals 1

    .line 18
    sget-object v0, Lwallet/core/jni/HRP;->$VALUES:[Lwallet/core/jni/HRP;

    invoke-virtual {v0}, [Lwallet/core/jni/HRP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/HRP;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    sget-object v0, Lwallet/core/jni/HRP$1;->$SwitchMap$wallet$core$jni$HRP:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string/jumbo v1, "terra"

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "evmos"

    return-object v0

    :pswitch_1
    return-object v1

    :pswitch_2
    const-string/jumbo v0, "osmo"

    return-object v0

    :pswitch_3
    const-string v0, "inj"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "qc"

    return-object v0

    :pswitch_5
    const-string v0, "addr"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "one"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "thor"

    return-object v0

    :pswitch_8
    const-string v0, "ecash"

    return-object v0

    :pswitch_9
    const-string v0, "bnb"

    return-object v0

    :pswitch_a
    const-string v0, "agoric"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "secret"

    return-object v0

    :pswitch_c
    const-string v0, "erd"

    return-object v0

    :pswitch_d
    const-string v0, "band"

    return-object v0

    :pswitch_e
    const-string v0, "bluzelle"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "oasis"

    return-object v0

    :pswitch_10
    const-string v0, "kava"

    return-object v0

    :pswitch_11
    const-string v0, "cro"

    return-object v0

    :pswitch_12
    return-object v1

    :pswitch_13
    const-string/jumbo v0, "zil"

    return-object v0

    :pswitch_14
    const-string v0, "ckb"

    return-object v0

    :pswitch_15
    const-string v0, "io"

    return-object v0

    :pswitch_16
    const-string v0, "btg"

    return-object v0

    :pswitch_17
    const-string v0, "bitcoincash"

    return-object v0

    :pswitch_18
    const-string v0, "cosmos"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "mona"

    return-object v0

    :pswitch_1a
    const-string v0, "dgb"

    return-object v0

    :pswitch_1b
    const-string v0, "grs"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "via"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "ltc"

    return-object v0

    :pswitch_1e
    const-string v0, "bc"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public value()I
    .locals 1

    .line 56
    iget v0, p0, Lwallet/core/jni/HRP;->value:I

    return v0
.end method
