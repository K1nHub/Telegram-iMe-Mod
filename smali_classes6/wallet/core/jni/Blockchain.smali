.class public final enum Lwallet/core/jni/Blockchain;
.super Ljava/lang/Enum;
.source "Blockchain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/Blockchain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/Blockchain;

.field public static final enum AETERNITY:Lwallet/core/jni/Blockchain;

.field public static final enum AION:Lwallet/core/jni/Blockchain;

.field public static final enum ALGORAND:Lwallet/core/jni/Blockchain;

.field public static final enum APTOS:Lwallet/core/jni/Blockchain;

.field public static final enum BINANCE:Lwallet/core/jni/Blockchain;

.field public static final enum BITCOIN:Lwallet/core/jni/Blockchain;

.field public static final enum CARDANO:Lwallet/core/jni/Blockchain;

.field public static final enum COSMOS:Lwallet/core/jni/Blockchain;

.field public static final enum DECRED:Lwallet/core/jni/Blockchain;

.field public static final enum EOS:Lwallet/core/jni/Blockchain;

.field public static final enum ETHEREUM:Lwallet/core/jni/Blockchain;

.field public static final enum EVERSCALE:Lwallet/core/jni/Blockchain;

.field public static final enum FILECOIN:Lwallet/core/jni/Blockchain;

.field public static final enum FIO:Lwallet/core/jni/Blockchain;

.field public static final enum GROESTLCOIN:Lwallet/core/jni/Blockchain;

.field public static final enum HARMONY:Lwallet/core/jni/Blockchain;

.field public static final enum HEDERA:Lwallet/core/jni/Blockchain;

.field public static final enum ICON:Lwallet/core/jni/Blockchain;

.field public static final enum IOTEX:Lwallet/core/jni/Blockchain;

.field public static final enum KUSAMA:Lwallet/core/jni/Blockchain;

.field public static final enum MULTIVERSX:Lwallet/core/jni/Blockchain;

.field public static final enum NANO:Lwallet/core/jni/Blockchain;

.field public static final enum NEAR:Lwallet/core/jni/Blockchain;

.field public static final enum NEBULAS:Lwallet/core/jni/Blockchain;

.field public static final enum NEO:Lwallet/core/jni/Blockchain;

.field public static final enum NERVOS:Lwallet/core/jni/Blockchain;

.field public static final enum NIMIQ:Lwallet/core/jni/Blockchain;

.field public static final enum NULS:Lwallet/core/jni/Blockchain;

.field public static final enum OASISNETWORK:Lwallet/core/jni/Blockchain;

.field public static final enum ONTOLOGY:Lwallet/core/jni/Blockchain;

.field public static final enum POLKADOT:Lwallet/core/jni/Blockchain;

.field public static final enum RIPPLE:Lwallet/core/jni/Blockchain;

.field public static final enum RONIN:Lwallet/core/jni/Blockchain;

.field public static final enum SOLANA:Lwallet/core/jni/Blockchain;

.field public static final enum STELLAR:Lwallet/core/jni/Blockchain;

.field public static final enum SUI:Lwallet/core/jni/Blockchain;

.field public static final enum TEZOS:Lwallet/core/jni/Blockchain;

.field public static final enum THEOPENNETWORK:Lwallet/core/jni/Blockchain;

.field public static final enum THETA:Lwallet/core/jni/Blockchain;

.field public static final enum THORCHAIN:Lwallet/core/jni/Blockchain;

.field public static final enum TRON:Lwallet/core/jni/Blockchain;

.field public static final enum VECHAIN:Lwallet/core/jni/Blockchain;

.field public static final enum WAVES:Lwallet/core/jni/Blockchain;

.field public static final enum ZCASH:Lwallet/core/jni/Blockchain;

.field public static final enum ZILLIQA:Lwallet/core/jni/Blockchain;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 17
    new-instance v0, Lwallet/core/jni/Blockchain;

    const-string v1, "BITCOIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/Blockchain;->BITCOIN:Lwallet/core/jni/Blockchain;

    .line 18
    new-instance v1, Lwallet/core/jni/Blockchain;

    const-string v3, "ETHEREUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/Blockchain;->ETHEREUM:Lwallet/core/jni/Blockchain;

    .line 19
    new-instance v3, Lwallet/core/jni/Blockchain;

    const-string v5, "VECHAIN"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/Blockchain;->VECHAIN:Lwallet/core/jni/Blockchain;

    .line 20
    new-instance v5, Lwallet/core/jni/Blockchain;

    const-string v6, "TRON"

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/Blockchain;->TRON:Lwallet/core/jni/Blockchain;

    .line 21
    new-instance v6, Lwallet/core/jni/Blockchain;

    const-string v9, "ICON"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v8, v10}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/Blockchain;->ICON:Lwallet/core/jni/Blockchain;

    .line 22
    new-instance v9, Lwallet/core/jni/Blockchain;

    const-string v11, "BINANCE"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v10, v12}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/Blockchain;->BINANCE:Lwallet/core/jni/Blockchain;

    .line 23
    new-instance v11, Lwallet/core/jni/Blockchain;

    const-string v13, "RIPPLE"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v12, v14}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/Blockchain;->RIPPLE:Lwallet/core/jni/Blockchain;

    .line 24
    new-instance v13, Lwallet/core/jni/Blockchain;

    const-string v15, "TEZOS"

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/Blockchain;->TEZOS:Lwallet/core/jni/Blockchain;

    .line 25
    new-instance v15, Lwallet/core/jni/Blockchain;

    const-string v14, "NIMIQ"

    const/16 v10, 0x9

    invoke-direct {v15, v14, v12, v10}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/Blockchain;->NIMIQ:Lwallet/core/jni/Blockchain;

    .line 26
    new-instance v14, Lwallet/core/jni/Blockchain;

    const-string v12, "STELLAR"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/Blockchain;->STELLAR:Lwallet/core/jni/Blockchain;

    .line 27
    new-instance v12, Lwallet/core/jni/Blockchain;

    const-string v10, "AION"

    const/16 v7, 0xb

    invoke-direct {v12, v10, v8, v7}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/Blockchain;->AION:Lwallet/core/jni/Blockchain;

    .line 28
    new-instance v10, Lwallet/core/jni/Blockchain;

    const-string v8, "COSMOS"

    const/16 v4, 0xc

    invoke-direct {v10, v8, v7, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/Blockchain;->COSMOS:Lwallet/core/jni/Blockchain;

    .line 29
    new-instance v8, Lwallet/core/jni/Blockchain;

    const-string v7, "THETA"

    const/16 v2, 0xd

    invoke-direct {v8, v7, v4, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/Blockchain;->THETA:Lwallet/core/jni/Blockchain;

    .line 30
    new-instance v7, Lwallet/core/jni/Blockchain;

    const-string v4, "ONTOLOGY"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v7, v4, v2, v8}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/Blockchain;->ONTOLOGY:Lwallet/core/jni/Blockchain;

    .line 31
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v2, "ZILLIQA"

    move-object/from16 v17, v7

    const/16 v7, 0xf

    invoke-direct {v4, v2, v8, v7}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->ZILLIQA:Lwallet/core/jni/Blockchain;

    .line 32
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v8, "IOTEX"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v7, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->IOTEX:Lwallet/core/jni/Blockchain;

    .line 33
    new-instance v8, Lwallet/core/jni/Blockchain;

    const-string v7, "EOS"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v8, v7, v4, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/Blockchain;->EOS:Lwallet/core/jni/Blockchain;

    .line 34
    new-instance v7, Lwallet/core/jni/Blockchain;

    const-string v4, "NANO"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v7, v4, v2, v8}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/Blockchain;->NANO:Lwallet/core/jni/Blockchain;

    .line 35
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v2, "NULS"

    move-object/from16 v21, v7

    const/16 v7, 0x13

    invoke-direct {v4, v2, v8, v7}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->NULS:Lwallet/core/jni/Blockchain;

    .line 36
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v8, "WAVES"

    move-object/from16 v22, v4

    const/16 v4, 0x14

    invoke-direct {v2, v8, v7, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->WAVES:Lwallet/core/jni/Blockchain;

    .line 37
    new-instance v8, Lwallet/core/jni/Blockchain;

    const-string v7, "AETERNITY"

    move-object/from16 v23, v2

    const/16 v2, 0x15

    invoke-direct {v8, v7, v4, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/Blockchain;->AETERNITY:Lwallet/core/jni/Blockchain;

    .line 38
    new-instance v7, Lwallet/core/jni/Blockchain;

    const-string v4, "NEBULAS"

    move-object/from16 v24, v8

    const/16 v8, 0x16

    invoke-direct {v7, v4, v2, v8}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/Blockchain;->NEBULAS:Lwallet/core/jni/Blockchain;

    .line 39
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v2, "FIO"

    move-object/from16 v25, v7

    const/16 v7, 0x17

    invoke-direct {v4, v2, v8, v7}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->FIO:Lwallet/core/jni/Blockchain;

    .line 40
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "SOLANA"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x18

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->SOLANA:Lwallet/core/jni/Blockchain;

    .line 41
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "HARMONY"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x19

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->HARMONY:Lwallet/core/jni/Blockchain;

    .line 42
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "NEAR"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1a

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->NEAR:Lwallet/core/jni/Blockchain;

    .line 43
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "ALGORAND"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1b

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->ALGORAND:Lwallet/core/jni/Blockchain;

    .line 44
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "POLKADOT"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->POLKADOT:Lwallet/core/jni/Blockchain;

    .line 45
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "CARDANO"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->CARDANO:Lwallet/core/jni/Blockchain;

    .line 46
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "NEO"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->NEO:Lwallet/core/jni/Blockchain;

    .line 47
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "FILECOIN"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x20

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->FILECOIN:Lwallet/core/jni/Blockchain;

    .line 48
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "MULTIVERSX"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x21

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->MULTIVERSX:Lwallet/core/jni/Blockchain;

    .line 49
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "OASISNETWORK"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x22

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->OASISNETWORK:Lwallet/core/jni/Blockchain;

    .line 50
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "DECRED"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x23

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->DECRED:Lwallet/core/jni/Blockchain;

    .line 51
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "ZCASH"

    const/16 v8, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x24

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->ZCASH:Lwallet/core/jni/Blockchain;

    .line 52
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "GROESTLCOIN"

    const/16 v8, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x25

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->GROESTLCOIN:Lwallet/core/jni/Blockchain;

    .line 53
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "THORCHAIN"

    const/16 v8, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x26

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->THORCHAIN:Lwallet/core/jni/Blockchain;

    .line 54
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "RONIN"

    const/16 v8, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x27

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->RONIN:Lwallet/core/jni/Blockchain;

    .line 55
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "KUSAMA"

    const/16 v8, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x28

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->KUSAMA:Lwallet/core/jni/Blockchain;

    .line 56
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "NERVOS"

    const/16 v8, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x29

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->NERVOS:Lwallet/core/jni/Blockchain;

    .line 57
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "EVERSCALE"

    const/16 v8, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->EVERSCALE:Lwallet/core/jni/Blockchain;

    .line 58
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "APTOS"

    const/16 v8, 0x29

    move-object/from16 v44, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->APTOS:Lwallet/core/jni/Blockchain;

    .line 59
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "HEDERA"

    const/16 v8, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->HEDERA:Lwallet/core/jni/Blockchain;

    .line 60
    new-instance v2, Lwallet/core/jni/Blockchain;

    const-string v7, "THEOPENNETWORK"

    const/16 v8, 0x2b

    move-object/from16 v46, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v7, v8, v4}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/Blockchain;->THEOPENNETWORK:Lwallet/core/jni/Blockchain;

    .line 61
    new-instance v4, Lwallet/core/jni/Blockchain;

    const-string v7, "SUI"

    const/16 v8, 0x2c

    move-object/from16 v47, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v7, v8, v2}, Lwallet/core/jni/Blockchain;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/Blockchain;->SUI:Lwallet/core/jni/Blockchain;

    const/16 v2, 0x2d

    new-array v2, v2, [Lwallet/core/jni/Blockchain;

    const/4 v7, 0x0

    aput-object v0, v2, v7

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v4, v2, v0

    .line 16
    sput-object v2, Lwallet/core/jni/Blockchain;->$VALUES:[Lwallet/core/jni/Blockchain;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lwallet/core/jni/Blockchain;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/Blockchain;
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

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 115
    :pswitch_1
    sget-object p0, Lwallet/core/jni/Blockchain;->SUI:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 114
    :pswitch_2
    sget-object p0, Lwallet/core/jni/Blockchain;->THEOPENNETWORK:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 113
    :pswitch_3
    sget-object p0, Lwallet/core/jni/Blockchain;->HEDERA:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 112
    :pswitch_4
    sget-object p0, Lwallet/core/jni/Blockchain;->APTOS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 111
    :pswitch_5
    sget-object p0, Lwallet/core/jni/Blockchain;->EVERSCALE:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 110
    :pswitch_6
    sget-object p0, Lwallet/core/jni/Blockchain;->NERVOS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 109
    :pswitch_7
    sget-object p0, Lwallet/core/jni/Blockchain;->KUSAMA:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 108
    :pswitch_8
    sget-object p0, Lwallet/core/jni/Blockchain;->RONIN:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 107
    :pswitch_9
    sget-object p0, Lwallet/core/jni/Blockchain;->THORCHAIN:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 106
    :pswitch_a
    sget-object p0, Lwallet/core/jni/Blockchain;->GROESTLCOIN:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 105
    :pswitch_b
    sget-object p0, Lwallet/core/jni/Blockchain;->ZCASH:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 104
    :pswitch_c
    sget-object p0, Lwallet/core/jni/Blockchain;->DECRED:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 103
    :pswitch_d
    sget-object p0, Lwallet/core/jni/Blockchain;->OASISNETWORK:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 102
    :pswitch_e
    sget-object p0, Lwallet/core/jni/Blockchain;->MULTIVERSX:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 101
    :pswitch_f
    sget-object p0, Lwallet/core/jni/Blockchain;->FILECOIN:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 100
    :pswitch_10
    sget-object p0, Lwallet/core/jni/Blockchain;->NEO:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 99
    :pswitch_11
    sget-object p0, Lwallet/core/jni/Blockchain;->CARDANO:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 98
    :pswitch_12
    sget-object p0, Lwallet/core/jni/Blockchain;->POLKADOT:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 97
    :pswitch_13
    sget-object p0, Lwallet/core/jni/Blockchain;->ALGORAND:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 96
    :pswitch_14
    sget-object p0, Lwallet/core/jni/Blockchain;->NEAR:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 95
    :pswitch_15
    sget-object p0, Lwallet/core/jni/Blockchain;->HARMONY:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 94
    :pswitch_16
    sget-object p0, Lwallet/core/jni/Blockchain;->SOLANA:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 93
    :pswitch_17
    sget-object p0, Lwallet/core/jni/Blockchain;->FIO:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 92
    :pswitch_18
    sget-object p0, Lwallet/core/jni/Blockchain;->NEBULAS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 91
    :pswitch_19
    sget-object p0, Lwallet/core/jni/Blockchain;->AETERNITY:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 90
    :pswitch_1a
    sget-object p0, Lwallet/core/jni/Blockchain;->WAVES:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 89
    :pswitch_1b
    sget-object p0, Lwallet/core/jni/Blockchain;->NULS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 88
    :pswitch_1c
    sget-object p0, Lwallet/core/jni/Blockchain;->NANO:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 87
    :pswitch_1d
    sget-object p0, Lwallet/core/jni/Blockchain;->EOS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 86
    :pswitch_1e
    sget-object p0, Lwallet/core/jni/Blockchain;->IOTEX:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 85
    :pswitch_1f
    sget-object p0, Lwallet/core/jni/Blockchain;->ZILLIQA:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 84
    :pswitch_20
    sget-object p0, Lwallet/core/jni/Blockchain;->ONTOLOGY:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 83
    :pswitch_21
    sget-object p0, Lwallet/core/jni/Blockchain;->THETA:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 82
    :pswitch_22
    sget-object p0, Lwallet/core/jni/Blockchain;->COSMOS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 81
    :pswitch_23
    sget-object p0, Lwallet/core/jni/Blockchain;->AION:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 80
    :pswitch_24
    sget-object p0, Lwallet/core/jni/Blockchain;->STELLAR:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 79
    :pswitch_25
    sget-object p0, Lwallet/core/jni/Blockchain;->NIMIQ:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 78
    :pswitch_26
    sget-object p0, Lwallet/core/jni/Blockchain;->TEZOS:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 77
    :pswitch_27
    sget-object p0, Lwallet/core/jni/Blockchain;->RIPPLE:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 76
    :pswitch_28
    sget-object p0, Lwallet/core/jni/Blockchain;->BINANCE:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 75
    :pswitch_29
    sget-object p0, Lwallet/core/jni/Blockchain;->ICON:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 74
    :pswitch_2a
    sget-object p0, Lwallet/core/jni/Blockchain;->TRON:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 73
    :pswitch_2b
    sget-object p0, Lwallet/core/jni/Blockchain;->VECHAIN:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 72
    :pswitch_2c
    sget-object p0, Lwallet/core/jni/Blockchain;->ETHEREUM:Lwallet/core/jni/Blockchain;

    return-object p0

    .line 71
    :pswitch_2d
    sget-object p0, Lwallet/core/jni/Blockchain;->BITCOIN:Lwallet/core/jni/Blockchain;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
        :pswitch_0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/Blockchain;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 16
    const-class v0, Lwallet/core/jni/Blockchain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/Blockchain;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/Blockchain;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/Blockchain;->$VALUES:[Lwallet/core/jni/Blockchain;

    invoke-virtual {v0}, [Lwallet/core/jni/Blockchain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/Blockchain;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 67
    iget v0, p0, Lwallet/core/jni/Blockchain;->value:I

    return v0
.end method
