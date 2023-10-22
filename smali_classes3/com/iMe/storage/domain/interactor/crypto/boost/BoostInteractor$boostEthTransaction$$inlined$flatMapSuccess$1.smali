.class public final Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->boostEthTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 BoostInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,101:1\n20#2,4:102\n28#2:113\n16#3,7:106\n*S KotlinDebug\n*F\n+ 1 BoostInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor\n*L\n23#1:106,7\n*E\n"
.end annotation


# instance fields
.field final synthetic $txHash$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    .line 103
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->access$getBoostRepository$p(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;)Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;

    move-result-object v0

    .line 104
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;->signBoostTransaction(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$lambda$1$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->$txHash$inlined:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$lambda$1$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "boostRepository\n        \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
