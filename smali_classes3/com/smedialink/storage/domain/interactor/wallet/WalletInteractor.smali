.class public final Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;
.super Ljava/lang/Object;
.source "WalletInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletInteractor\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,83:1\n49#2:84\n15#2:85\n*S KotlinDebug\n*F\n+ 1 WalletInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletInteractor\n*L\n39#1:84\n51#1:85\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "walletRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    .line 23
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 24
    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getWalletRepository$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    return-object p0
.end method

.method public static synthetic getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 48
    iget-object p3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWalletBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 36
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWalletTransactions$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/16 p4, 0x1e

    const/16 v1, 0x1e

    goto :goto_2

    :cond_3
    move v1, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 67
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    .line 64
    invoke-virtual/range {p2 .. p7}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions(ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCryptoTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->getCryptoTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTokenBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    .line 50
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->getTokensBalance(Ljava/util/List;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1;

    invoke-direct {p2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1;-><init>()V

    new-instance p3, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    .line 38
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    .line 39
    sget-object v3, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->ERR_MONEY_ACCOUNT_NOT_EXIST:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 49
    new-instance v3, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;

    invoke-direct {v3, v2, p0, p1, p2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;-><init>([Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    new-instance p1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v3}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "vararg errorStatus: IErr\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getWalletTransactions(ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "I",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isUnknown()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, p3

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    move v4, p1

    move-object v5, p2

    move v7, p4

    move-object v8, p5

    .line 72
    invoke-interface/range {v3 .. v8}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->getWalletTransactionHistory(ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-static {p2, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendTokens(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->walletRepository:Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->sendTokens(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletRepository\n       \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
