.class public final Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLjava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapError$1\n+ 2 WalletInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletInteractor\n*L\n1#1,92:1\n103#2,4:93\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

.field final synthetic $force$inlined:Z

.field final synthetic $networkId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public constructor <init>([Lcom/iMe/storage/data/network/model/error/IErrorStatus;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    iput-boolean p3, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$force$inlined:Z

    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$networkId$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 93
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getWalletRepository$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;->activateWallet()Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    iget-boolean v2, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$force$inlined:Z

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$networkId$inlined:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;)V

    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$sam$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getWalletBalance(\n  \u2026(schedulersProvider.io())"

    .line 95
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(Result.error<R>(result.error) as R)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
