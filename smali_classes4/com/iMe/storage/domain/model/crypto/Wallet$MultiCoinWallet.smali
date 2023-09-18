.class public abstract Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;
.super Lcom/iMe/storage/domain/model/crypto/Wallet;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiCoinWallet"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final coinType:Lwallet/core/jni/CoinType;

.field private final guid:Ljava/lang/String;

.field private final privateKey:Lwallet/core/jni/PrivateKey;

.field private final privateKeyBytes:[B


# direct methods
.method private constructor <init>(Lwallet/core/jni/HDWallet;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lwallet/core/jni/CoinType;)V
    .locals 3

    .line 31
    invoke-virtual {p1}, Lwallet/core/jni/HDWallet;->mnemonic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdWallet.mnemonic()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->guid:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->coinType:Lwallet/core/jni/CoinType;

    .line 35
    invoke-virtual {p1, p4}, Lwallet/core/jni/HDWallet;->getKeyForCoin(Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object p2

    const-string p3, "hdWallet.getKeyForCoin(coinType)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->privateKey:Lwallet/core/jni/PrivateKey;

    .line 37
    invoke-virtual {p1, p4}, Lwallet/core/jni/HDWallet;->getAddressForCoin(Lwallet/core/jni/CoinType;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "hdWallet.getAddressForCoin(coinType)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->address:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Lwallet/core/jni/PrivateKey;->data()[B

    move-result-object p1

    const-string p2, "privateKey.data()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->privateKeyBytes:[B

    return-void
.end method

.method public synthetic constructor <init>(Lwallet/core/jni/HDWallet;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lwallet/core/jni/CoinType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;-><init>(Lwallet/core/jni/HDWallet;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lwallet/core/jni/CoinType;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method protected final getCoinType()Lwallet/core/jni/CoinType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->coinType:Lwallet/core/jni/CoinType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivateKey()Lwallet/core/jni/PrivateKey;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->privateKey:Lwallet/core/jni/PrivateKey;

    return-object v0
.end method

.method public getPrivateKeyBytes()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->privateKeyBytes:[B

    return-object v0
.end method
