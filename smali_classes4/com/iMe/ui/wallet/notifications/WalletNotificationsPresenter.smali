.class public final Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletNotificationsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNotificationsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNotificationsPresenter.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,142:1\n39#2,8:143\n39#2,8:151\n39#2,8:159\n39#2,8:167\n*S KotlinDebug\n*F\n+ 1 WalletNotificationsPresenter.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsPresenter\n*L\n38#1:143,8\n63#1:151,8\n91#1:159,8\n132#1:167,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;


# direct methods
.method public static synthetic $r8$lambda$wR7aUgeLdOVn2rDgxxUJWEq6tSI(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadNotification$lambda$4(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string/jumbo v0, "walletNotificationInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 20
    iput-object p3, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic loadNotification$default(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadNotification(Z)V

    return-void
.end method

.method private static final loadNotification$lambda$4(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final markNotificationAsRead(Ljava/lang/String;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 130
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->setNotificationsRead(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "walletNotificationIntera\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public final loadMoreNotification(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lastId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 61
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "walletNotificationIntera\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadNotification(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 88
    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->getNotifications$default(Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 89
    iget-object v3, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 90
    new-instance v3, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v3, "walletNotificationIntera\u2026e.showRefreshing(false) }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final markAllNotificationAsRead(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->walletNotificationInteractor:Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    .line 35
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->setAllNotificationsRead()Lio/reactivex/Observable;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletNotificationIntera\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p1, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;-><init>(Ljava/util/List;Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, p1, v4, v0, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final markNotificationAsRead(Lcom/iMe/model/wallet/notification/NotificationItem;I)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/notification/Notification;->setRead(Z)V

    .line 28
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {v0, p2, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;->updateNotificationAsRead(ILcom/iMe/model/wallet/notification/NotificationItem;)V

    .line 29
    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->markNotificationAsRead(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadNotification$default(Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;ZILjava/lang/Object;)V

    return-void
.end method
