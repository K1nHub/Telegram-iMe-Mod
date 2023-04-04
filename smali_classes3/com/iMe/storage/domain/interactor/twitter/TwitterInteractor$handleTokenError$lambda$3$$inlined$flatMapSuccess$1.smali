.class public final Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+TT;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n*L\n1#1,80:1\n108#2,16:81\n*E\n"
.end annotation


# instance fields
.field final synthetic $onSuccessObservable$inlined:Lio/reactivex/Observable;

.field final synthetic $profileId$inlined:J

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->$onSuccessObservable$inlined:Lio/reactivex/Observable;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    iput-wide p3, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->$profileId$inlined:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+TT;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->access$getTwitterPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    .line 84
    iget-wide v2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->$profileId$inlined:J

    invoke-virtual {v0, v2, v3}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v4

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;->getRefreshToken()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;->getExpiresIn()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v10, v1

    const/4 v12, 0x3

    const/4 v13, 0x0

    .line 84
    invoke-static/range {v4 .. v13}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->copy$default(Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 90
    iget-wide v2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->$profileId$inlined:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->put(JLcom/iMe/storage/domain/model/twitter/TwitterAccountData;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->$onSuccessObservable$inlined:Lio/reactivex/Observable;

    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "onSuccessObservable.subs\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
