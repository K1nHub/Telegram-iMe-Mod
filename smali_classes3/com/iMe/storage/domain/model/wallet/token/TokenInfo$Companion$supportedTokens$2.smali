.class final Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TokenInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1127
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion$supportedTokens$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x4e

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    .line 1129
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OLCF;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OLCF;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1130
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIME;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIME;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1131
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BUSD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BUSD;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ATD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ATD;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1132
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DHV;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DHV;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIG;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PCNT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PCNT;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1133
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BCUG;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BCUG;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TARA;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TARA;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$HAPI;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$HAPI;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1134
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TRU;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TRU;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UFT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UFT;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PRQ;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PRQ;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1135
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIT;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GT;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LANC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LANC;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1136
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OKB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OKB;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FIL;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FIL;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MATIC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MATIC;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1137
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$WBTC;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LINK;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LINK;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UFI;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UFI;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1138
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DEGO;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DEGO;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PRE;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PRE;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$EQX;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 1139
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LSS;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LSS;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GAINS;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GAINS;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UNN;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UNN;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 1140
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DEXT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DEXT;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TOMOE;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FLURRY;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FLURRY;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 1141
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DOP;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DOP;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GFX;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GFX;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 1142
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$D11;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$D11;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DVD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DVD;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 1143
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$METIS;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$METIS;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CTSI;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CTSI;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SAITO;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SAITO;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 1144
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ZCX;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ZCX;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CEEK;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CEEK;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$XEND;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$XEND;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 1145
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHR;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BOSON;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BOSON;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KONO;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KONO;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 1146
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KFT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KFT;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OM;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$OM;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ROYA;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ROYA;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 1147
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CVR;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$CVR;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SKILL;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SKILL;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$YAY;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$YAY;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 1148
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KABY;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KABY;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDO;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDO;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FUSE;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FUSE;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 1149
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDC;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SAND;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SAND;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DAI;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$DAI;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 1150
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$QUICK;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$QUICK;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$AAVE;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GNS;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 1151
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MANA;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MANA;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GHST;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$GHST;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UNI;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$UNI;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 1152
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TON;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TON;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHIB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SHIB;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$INF;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$INF;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 1153
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KOM;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$KOM;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FTM;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FTM;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PPM;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$PPM;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 1154
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIN;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$SIN;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TRX;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TRX;

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TUSD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$TUSD;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 1155
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$HT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$HT;

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BTCMT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BTCMT;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 1128
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
