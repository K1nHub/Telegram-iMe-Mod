.class public final Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;
.super Ljava/lang/Object;
.source "CryptoWalletsManagerImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl$WhenMappings;
    }
.end annotation


# instance fields
.field private final evmBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

.field private final tonBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;)V
    .locals 1

    const-string v0, "evmBlockchainCryptoWalletManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonBlockchainCryptoWalletManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->evmBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 12
    iput-object p2, p0, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->tonBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    return-void
.end method

.method private final getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->tonBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->evmBlockchainCryptoWalletManager:Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createWallet(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p3}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->createWallet(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public deleteWallet(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->deleteWallet(Ljava/lang/String;)V

    return-void
.end method

.method public generateAddressByMnemonic(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p2}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public generateMnemonic(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p3}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p4}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p5}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;->getWalletManager(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
