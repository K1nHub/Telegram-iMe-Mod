.class public final enum Lcom/iMe/storage/domain/model/crypto/BlockchainType;
.super Ljava/lang/Enum;
.source "BlockchainType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field public static final enum BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

.field public static final enum EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field public static final enum TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field public static final enum TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# instance fields
.field private final backendName:Ljava/lang/String;

.field private final coinType:Lwallet/core/jni/CoinType;

.field private final iconResId:I

.field private final subtitleResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 15
    new-instance v8, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 17
    sget v4, Lcom/iMe/storage/R$drawable;->fork_ic_evm_logo:I

    .line 18
    sget v5, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_evm_title:I

    .line 19
    sget v6, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_evm_subtitle:I

    .line 20
    sget-object v7, Lwallet/core/jni/CoinType;->ETHEREUM:Lwallet/core/jni/CoinType;

    const-string v1, "EVM"

    const/4 v2, 0x0

    const-string v3, "ETHEREUM_VM"

    move-object v0, v8

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILwallet/core/jni/CoinType;)V

    sput-object v8, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 24
    sget v13, Lcom/iMe/storage/R$drawable;->fork_ic_tron_logo:I

    .line 25
    sget v14, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_tron_title:I

    .line 26
    sget v15, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_tron_subtitle:I

    .line 27
    sget-object v16, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    const-string v10, "TRON"

    const/4 v11, 0x1

    const-string v12, "TRON_VM"

    move-object v9, v0

    .line 22
    invoke-direct/range {v9 .. v16}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILwallet/core/jni/CoinType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 29
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 31
    sget v5, Lcom/iMe/storage/R$drawable;->fork_ic_ton_logo:I

    .line 32
    sget v6, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_ton_title:I

    .line 33
    sget v7, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_ton_subtitle:I

    .line 34
    sget-object v8, Lwallet/core/jni/CoinType;->TON:Lwallet/core/jni/CoinType;

    const-string v2, "TON"

    const/4 v3, 0x2

    const-string v4, "TON_VM"

    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILwallet/core/jni/CoinType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 36
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 38
    sget v13, Lcom/iMe/storage/R$drawable;->fork_ic_bitcoin_logo:I

    .line 39
    sget v14, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_bitcoin_title:I

    .line 40
    sget v15, Lcom/iMe/storage/R$string;->wallet_crypto_blockchains_bitcoin_subtitle:I

    .line 41
    sget-object v16, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    const-string v10, "BITCOIN"

    const/4 v11, 0x3

    const-string v12, "BITCOIN"

    move-object v9, v0

    .line 36
    invoke-direct/range {v9 .. v16}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILwallet/core/jni/CoinType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->$values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILwallet/core/jni/CoinType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lwallet/core/jni/CoinType;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->backendName:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->iconResId:I

    .line 11
    iput p5, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->titleResId:I

    .line 12
    iput p6, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->subtitleResId:I

    .line 13
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->coinType:Lwallet/core/jni/CoinType;

    return-void
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method


# virtual methods
.method public final getBackendName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoinType()Lwallet/core/jni/CoinType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->coinType:Lwallet/core/jni/CoinType;

    return-object v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->iconResId:I

    return v0
.end method

.method public final getSubtitleResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->subtitleResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->titleResId:I

    return v0
.end method

.method public final isBip39PhraseBased()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->getBip39PhraseBasedBlockchains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
