.class public final Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;
.super Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.source "TONBlockchainCryptoWalletManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTONBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,79:1\n27#2:80\n27#2:81\n27#2:82\n27#2:83\n*S KotlinDebug\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl\n*L\n36#1:80\n47#1:81\n61#1:82\n68#1:83\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/manager/ton/TonController;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0, p1, v0}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;-><init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 18
    iput-object p2, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 19
    iput-object p3, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$rewriteWalletToNewGuid(Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual/range {p0 .. p5}, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createWallet(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 25
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 26
    invoke-interface {p2, p1}, Lcom/smedialink/storage/domain/manager/ton/TonController;->createWallet(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 58
    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v1, ""

    .line 56
    invoke-interface {v0, v1, p1}, Lcom/smedialink/storage/domain/manager/ton/TonController;->importWallet(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$$inlined$mapSuccess$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$$inlined$mapSuccess$1;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->createWallet(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "createWallet(guid, passw\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1;

    invoke-direct {p2}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 30
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 33
    invoke-static {p2}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/domain/manager/ton/TonController;->importWallet(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 74
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/manager/ton/TonController;->isValidWalletAddress(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 44
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/smedialink/storage/domain/manager/ton/TonController;

    .line 45
    invoke-static {p3}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/domain/manager/ton/TonController;->importWallet(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
