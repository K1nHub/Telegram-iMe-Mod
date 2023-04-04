.class public final Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletNotificationDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

.field private final accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final item:Lcom/iMe/model/wallet/notification/NotificationItem;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/notification/NotificationItem;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->item:Lcom/iMe/model/wallet/notification/NotificationItem;

    .line 17
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 18
    iput-object p3, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 19
    iput-object p4, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 20
    new-instance v0, Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    invoke-direct {v0, p1, p4, p3, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;-><init>(Lcom/iMe/model/wallet/transaction/ClickableItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->$$delegate_0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/WalletLinkClickableView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->$$delegate_0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->attachViewState(Lcom/iMe/manager/wallet/WalletLinkClickableView;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    .line 33
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->onDetachViewState()V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->$$delegate_0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->onDetachViewState()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->item:Lcom/iMe/model/wallet/notification/NotificationItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/notification/Notification;->getDate()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->item:Lcom/iMe/model/wallet/notification/NotificationItem;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/notification/NotificationItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/manager/wallet/WalletLinkClickableView;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;->attachViewState(Lcom/iMe/manager/wallet/WalletLinkClickableView;)V

    return-void
.end method
