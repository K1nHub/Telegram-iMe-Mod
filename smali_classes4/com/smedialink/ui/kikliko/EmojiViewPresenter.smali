.class public final Lcom/smedialink/ui/kikliko/EmojiViewPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "EmojiViewPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/kikliko/EmojiViewView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiViewPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiViewPresenter.kt\ncom/smedialink/ui/kikliko/EmojiViewPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n39#2,6:97\n39#2,6:103\n39#2,6:110\n39#2,6:116\n39#2,6:122\n39#2,6:128\n39#2,6:134\n1#3:109\n*S KotlinDebug\n*F\n+ 1 EmojiViewPresenter.kt\ncom/smedialink/ui/kikliko/EmojiViewPresenter\n*L\n28#1:97,6\n40#1:103,6\n53#1:110,6\n65#1:116,6\n77#1:122,6\n84#1:128,6\n91#1:134,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

.field private lastSearchDisposable:Lio/reactivex/disposables/Disposable;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "kiklikoInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    .line 16
    iput-object p2, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 17
    iput-object p3, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public final getTrending(Ljava/lang/String;)V
    .locals 3

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->getTrending(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.getTre\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x1

    .line 71
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadKiklikoTags()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->getTags()Lio/reactivex/Observable;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.getTag\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewPresenter;)V

    new-instance v2, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 33
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onGifPreviewAsOpened(Ljava/lang/String;)V
    .locals 3

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->view(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "kiklikoInteractor.view(s\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 85
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onGifWasSent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->share(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "kiklikoInteractor.share(\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 78
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "slug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->report(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "kiklikoInteractor.report\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 92
    invoke-static {p0, p1, v1, p2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final searchByKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.search\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x1

    .line 46
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final searchByTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->kiklikoInteractor:Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/interactor/kikliko/KiklikoInteractor;->searchByTag(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "kiklikoInteractor.search\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->lastSearchDisposable:Lio/reactivex/disposables/Disposable;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x1

    .line 59
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
