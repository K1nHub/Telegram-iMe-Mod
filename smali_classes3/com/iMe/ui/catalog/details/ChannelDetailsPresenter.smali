.class public final Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "ChannelDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelDetailsPresenter.kt\ncom/iMe/ui/catalog/details/ChannelDetailsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,115:1\n63#2,12:116\n*S KotlinDebug\n*F\n+ 1 ChannelDetailsPresenter.kt\ncom/iMe/ui/catalog/details/ChannelDetailsPresenter\n*L\n41#1:116,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final campaign:Lcom/iMe/model/catalog/CampaignItem;

.field private final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;


# direct methods
.method public static synthetic $r8$lambda$E4wZhtZt7EtzqMXj2aEbNMOKrkM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->getSubscriptionStatusChangeObservable$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZGVo53PNTDXp8A1nazzUbYcKlvk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->onSubscribeClick$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 28
    iput-object p3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 29
    iput-object p4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 30
    iput-object p5, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 31
    iput-object p6, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-void
.end method

.method public static final synthetic access$getCampaign$p(Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;)Lcom/iMe/model/catalog/CampaignItem;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionStatusChangeObservable(Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->getSubscriptionStatusChangeObservable(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final canSubscribe(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    .line 98
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    return p1
.end method

.method private final getSubscriptionStatusChangeObservable(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->canSubscribe(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    new-instance v2, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$SubscribeCatalogItem;

    iget-object v3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v3}, Lcom/iMe/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$SubscribeCatalogItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 104
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    invoke-interface {v1, p1}, Lcom/iMe/manager/TelegramApi;->subscribeToChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    new-instance v2, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$UnsubscribeCatalogItem;

    iget-object v3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v3}, Lcom/iMe/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$UnsubscribeCatalogItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 107
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    invoke-interface {v1, p1}, Lcom/iMe/manager/TelegramApi;->unsubscribeFromChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    :goto_0
    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;-><init>(Z)V

    new-instance v0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "isNotSubscribed = canSub\u2026ubscribed.not()\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getSubscriptionStatusChangeObservable$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final onSubscribeClick$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final copyChannelLink()V
    .locals 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v1}, Lcom/iMe/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    const-string v2, "LinkCopied"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"LinkCopied\", R.string.LinkCopied)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createChannelQr()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/details/ChannelDetailsView;

    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->showChannelQr(J)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 87
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$PreviewCatalogItem;

    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v1}, Lcom/iMe/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$PreviewCatalogItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 88
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/details/ChannelDetailsView;

    .line 89
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-interface {v0, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->setupCampaignInfo(Lcom/iMe/model/catalog/CampaignItem;)V

    .line 90
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->canSubscribe(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->setupSubscribeButton(Z)V

    return-void
.end method

.method public final onSubscribeClick()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "telegramApi.getChatInfoB\u2026(schedulersProvider.ui())"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$1;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;)V

    new-instance v2, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun onSubscribeClick() {\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v4}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 49
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final shareChannelLink()V
    .locals 7

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v1}, Lcom/iMe/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "append(\'\\n\')"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v4}, Lcom/iMe/model/catalog/CampaignItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v4}, Lcom/iMe/model/catalog/CampaignItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://"

    aput-object v2, v1, v6

    .line 60
    iget-object v2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v3, 0x0

    invoke-static {v2, v6, v5, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "/"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 62
    iget-object v3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {v3}, Lcom/iMe/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 58
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->append(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply {\n\u2026   )\n        }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/details/ChannelDetailsView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->showShareDialog(Ljava/lang/String;)V

    return-void
.end method
