.class public final Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;
.super Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;
.source "TONBlockchainCryptoWalletManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTONBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,85:1\n29#2,7:86\n29#2,7:93\n29#2,7:100\n*S KotlinDebug\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl\n*L\n34#1:86,7\n52#1:93,7\n76#1:100,7\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final tonController:Lcom/iMe/storage/domain/manager/ton/TonController;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/ton/TonController;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0, p1, v0}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;-><init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    .line 17
    iput-object p2, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 18
    iput-object p3, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$rewriteWalletToNewGuid(Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual/range {p0 .. p5}, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;->rewriteWalletToNewGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createWallet()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 23
    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/ton/TonController;->createWallet()Lio/reactivex/Observable;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 32
    invoke-static {p2}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/ton/TonController;->importWallet(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 82
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/ton/TonController;->isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/ton/TonController;->isValidMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
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

    .line 49
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 50
    invoke-static {p3}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/ton/TonController;->importWallet(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonController\n          \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
