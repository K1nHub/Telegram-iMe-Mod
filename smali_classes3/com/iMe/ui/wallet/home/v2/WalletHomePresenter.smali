.class public final Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletHomePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/v2/WalletHomeView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomePresenter.kt\ncom/iMe/ui/wallet/home/v2/WalletHomePresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,58:1\n16#2,3:59\n39#3,8:62\n*S KotlinDebug\n*F\n+ 1 WalletHomePresenter.kt\ncom/iMe/ui/wallet/home/v2/WalletHomePresenter\n*L\n41#1:59,3\n42#1:62,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "rxEventBus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method private final listenEvents()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 1

    .line 30
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;->listenEvents()V

    .line 32
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->loadTabsInfo()V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->onSetupNavigationRouter()V

    return-void
.end method