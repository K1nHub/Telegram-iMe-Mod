.class public final Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapError$1\n+ 2 WalletInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletInteractor\n*L\n1#1,81:1\n40#2,4:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

.field final synthetic $force$inlined:Z

.field final synthetic $networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public constructor <init>([Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    iput-boolean p3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$force$inlined:Z

    iput-object p4, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    .line 82
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->access$getWalletRepository$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->activateWallet()Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$force$inlined:Z

    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;-><init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    new-instance v1, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$sam$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getWalletBalance(for\u2026(schedulersProvider.io())"

    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(Result.error<R>(result.error) as R)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$$inlined$flatMapError$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
