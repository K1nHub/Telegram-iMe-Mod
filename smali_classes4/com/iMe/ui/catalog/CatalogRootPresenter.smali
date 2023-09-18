.class public final Lcom/iMe/ui/catalog/CatalogRootPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CatalogRootPresenter.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/catalog/CatalogRootView;",
        ">;",
        "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRootPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRootPresenter.kt\ncom/iMe/ui/catalog/CatalogRootPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,123:1\n63#2,12:124\n*S KotlinDebug\n*F\n+ 1 CatalogRootPresenter.kt\ncom/iMe/ui/catalog/CatalogRootPresenter\n*L\n101#1:124,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationCenter$delegate:Lkotlin/Lazy;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedTabId:I

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "catalogInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 24
    iput-object p2, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 25
    iput-object p3, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 26
    iput-object p4, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 27
    iput-object p5, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 31
    new-instance p1, Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;-><init>(Lcom/iMe/ui/catalog/CatalogRootPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->notificationCenter$delegate:Lkotlin/Lazy;

    .line 34
    sget p1, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_channels:I

    iput p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->selectedTabId:I

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->languages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAllLanguagesLocaleInfo(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->getAllLanguagesLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLanguages$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->languages:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectedLanguageId(Lcom/iMe/ui/catalog/CatalogRootPresenter;)I
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->getSelectedLanguageId()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTelegramControllersGateway$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-object p0
.end method

.method public static final synthetic access$setLanguages$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;Ljava/util/List;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->languages:Ljava/util/List;

    return-void
.end method

.method private final getAllLanguagesLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 3

    .line 116
    new-instance v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->catalog_all:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->catalog_all_languages:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v1, -0x1

    .line 119
    iput v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    return-object v0
.end method

.method private final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->notificationCenter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationCenter;

    return-object v0
.end method

.method private final getSelectedLanguageId()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private final loadLanguages()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 99
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;->getLanguages()Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "catalogInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/catalog/CatalogRootPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 112
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 9

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 74
    aget-object p2, p3, p1

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x2

    .line 75
    aget-object p2, p3, p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x3

    .line 76
    aget-object p3, p3, v2

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 77
    iget-object p3, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p3, p1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-nez p2, :cond_0

    .line 79
    invoke-virtual {v2, v0, v1, p1, v8}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2, v0, v1, p1, v8}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    goto :goto_0

    :cond_1
    neg-long v3, v0

    const-wide/16 p1, 0x0

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v8

    .line 81
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 69
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 63
    sget v0, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_channels:I

    invoke-virtual {p0, v0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->selectTab(I)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public final onSelectLanguageClick()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/CatalogRootView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->getSelectedLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->languages:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/catalog/CatalogRootView;->openSelectLanguageScreen(ILjava/util/List;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->loadLanguages()V

    :goto_0
    return-void
.end method

.method public final onSelectedLanguageChanged(I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setCatalogSelectedLanguageId(Ljava/lang/Long;)V

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    invoke-interface {p1}, Lcom/iMe/ui/catalog/CatalogRootView;->onSelectedLanguageChanged()V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 40
    iput p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->selectedTabId:I

    .line 41
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    iget v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter;->selectedTabId:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/CatalogRootView;->onTabSelected(I)V

    return-void
.end method
