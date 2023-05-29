.class public final Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;
.super Lcom/iMe/storage/domain/model/crypto/Wallet;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BTC"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final hdWallet:Lwallet/core/jni/HDWallet;

.field private final privateKeyBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V
    .locals 3

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hdWallet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lwallet/core/jni/HDWallet;->mnemonic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdWallet.mnemonic()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->guid:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    .line 76
    sget-object p1, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->isProductionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-virtual {p2, v0}, Lwallet/core/jni/HDWallet;->getAddressForCoin(Lwallet/core/jni/CoinType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    sget-object v1, Lwallet/core/jni/Derivation;->BITCOINTESTNET:Lwallet/core/jni/Derivation;

    invoke-virtual {p2, v0, v1}, Lwallet/core/jni/HDWallet;->getAddressDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "with(hdWallet) {\n       \u2026)\n            }\n        }"

    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->address:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->isProductionActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    sget-object p1, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-static {p2, p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->getPrivateKey(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object p1

    goto :goto_1

    .line 87
    :cond_1
    sget-object p1, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    sget-object v0, Lwallet/core/jni/Derivation;->BITCOINTESTNET:Lwallet/core/jni/Derivation;

    invoke-virtual {p2, p1, v0}, Lwallet/core/jni/HDWallet;->getKeyDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)Lwallet/core/jni/PrivateKey;

    move-result-object p1

    .line 88
    :goto_1
    invoke-virtual {p1}, Lwallet/core/jni/PrivateKey;->data()[B

    move-result-object p1

    const-string p2, "with(hdWallet) {\n       \u2026       }.data()\n        }"

    .line 83
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->privateKeyBytes:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;Ljava/lang/String;Lwallet/core/jni/HDWallet;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->copy(Ljava/lang/String;Lwallet/core/jni/HDWallet;)Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lwallet/core/jni/HDWallet;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lwallet/core/jni/HDWallet;)Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;
    .locals 1

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hdWallet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;-><init>(Ljava/lang/String;Lwallet/core/jni/HDWallet;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getHdWallet()Lwallet/core/jni/HDWallet;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    return-object v0
.end method

.method public getPrivateKeyBytes()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->privateKeyBytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTC(guid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hdWallet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->hdWallet:Lwallet/core/jni/HDWallet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method