.class public final Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;
.super Ljava/lang/Object;
.source "CancelInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancelInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,70:1\n14#2:71\n*S KotlinDebug\n*F\n+ 1 CancelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor\n*L\n25#1:71\n*E\n"
.end annotation


# instance fields
.field private final cancelRepository:Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 16
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelRepository:Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;

    .line 17
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCancelRepository$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelRepository:Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;

    return-object p0
.end method

.method public static final synthetic access$getCancelTokenBySourceTxToken(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->getCancelTokenBySourceTxToken(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method private final getCancelTokenBySourceTxToken(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isEthAndTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isBscTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isPolygonTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isFantomTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported token transaction for cancel"

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final cancelEthTransaction(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelRepository:Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;

    .line 24
    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;->getCryptoCancelMetadata(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cancelRepository\n       \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
