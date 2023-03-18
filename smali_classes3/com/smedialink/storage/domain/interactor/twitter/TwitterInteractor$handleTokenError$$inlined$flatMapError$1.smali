.class public final Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;
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
        "+TT;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+TT;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapError$1\n+ 2 TwitterInteractor.kt\ncom/smedialink/storage/domain/interactor/twitter/TwitterInteractor\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,81:1\n104#2,4:82\n15#3:86\n*S KotlinDebug\n*F\n+ 1 TwitterInteractor.kt\ncom/smedialink/storage/domain/interactor/twitter/TwitterInteractor\n*L\n107#1:86\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

.field final synthetic $onSuccessObservable$inlined:Lio/reactivex/Observable;

.field final synthetic $profileId$inlined:J

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;


# direct methods
.method public constructor <init>([Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;JLio/reactivex/Observable;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    iput-wide p3, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$profileId$inlined:J

    iput-object p5, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$onSuccessObservable$inlined:Lio/reactivex/Observable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+TT;>;>;"
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
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

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
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;->access$getTwitterRepository$p(Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/smedialink/storage/domain/repository/twitter/TwitterRepository;

    move-result-object p1

    .line 83
    iget-wide v0, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$profileId$inlined:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/storage/domain/repository/twitter/TwitterRepository;->getRefreshToken(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$onSuccessObservable$inlined:Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    iget-wide v3, p0, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->$profileId$inlined:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;-><init>(Lio/reactivex/Observable;Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;J)V

    new-instance v1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

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

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
