.class public final Lcom/iMe/ui/kikliko/EmojiViewPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "EmojiViewPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/kikliko/EmojiViewView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiViewPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiViewPresenter.kt\ncom/iMe/ui/kikliko/EmojiViewPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n63#2,12:126\n63#2,12:138\n63#2,12:151\n63#2,12:163\n63#2,12:175\n63#2,12:187\n63#2,12:199\n1#3:150\n*S KotlinDebug\n*F\n+ 1 EmojiViewPresenter.kt\ncom/iMe/ui/kikliko/EmojiViewPresenter\n*L\n31#1:126,12\n45#1:138,12\n66#1:151,12\n86#1:163,12\n105#1:175,12\n113#1:187,12\n120#1:199,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

.field private lastSearchDisposable:Lio/reactivex/disposables/Disposable;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "kiklikoInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 20
    iput-object p3, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public final getTrending(Ljava/lang/String;)V
    .locals 4

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectClipCategory;

    const-string v1, "trending"

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectClipCategory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->getTrending(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.getTre\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x1

    .line 99
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadKiklikoTags()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->getTags()Lio/reactivex/Observable;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.getTag\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/kikliko/EmojiViewPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 37
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onGifPreviewAsOpened(Ljava/lang/String;)V
    .locals 4

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    sget-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$PreviewClip;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$PreviewClip;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 111
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->view(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "kiklikoInteractor.view(s\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 114
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onGifWasSent(Ljava/lang/String;)V
    .locals 4

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->share(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "kiklikoInteractor.share(\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->report(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "kiklikoInteractor.report\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p2, Lcom/iMe/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 121
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final searchByKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    sget-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SearchClip;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SearchClip;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.search\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p2, 0x1

    .line 58
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final searchByTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 63
    :cond_0
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectClipCategory;

    invoke-direct {v0, p1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectClipCategory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/interactor/kikliko/KiklikoInteractor;->searchByTag(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.search\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p2, 0x1

    .line 79
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
