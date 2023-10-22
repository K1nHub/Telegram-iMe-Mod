.class public final Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->checkAndPrepareSession()Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,101:1\n37#2,4:102\n69#2,3:113\n16#3,7:106\n18#4:116\n18#5:117\n*S KotlinDebug\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n*L\n40#1:106,7\n71#1:116\n71#1:117\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getTonFragmentRepository$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getSessionData()Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$lambda$2$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$lambda$2$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n                    to\u2026r.io())\n                }"

    .line 102
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

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
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
