.class public final Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;
.super Ljava/lang/Object;
.source "CryptoRecipientManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$Companion;,
        Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoRecipientManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoRecipientManager.kt\ncom/smedialink/manager/crypto/recipient/CryptoRecipientManager\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,184:1\n15#2:185\n39#3,6:186\n39#3,6:192\n*S KotlinDebug\n*F\n+ 1 CryptoRecipientManager.kt\ncom/smedialink/manager/crypto/recipient/CryptoRecipientManager\n*L\n62#1:185\n81#1:186,6\n113#1:192,6\n*E\n"
.end annotation


# instance fields
.field private final cryptoPermissionInteractor:Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final telegramApi:Lcom/smedialink/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private viewState:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/manager/TelegramApi;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/gateway/TelegramControllersGateway;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPermissionInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 35
    iput-object p2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 36
    iput-object p3, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 37
    iput-object p4, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 38
    iput-object p5, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 39
    iput-object p6, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 43
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$formatBotRequestParams(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->formatBotRequestParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRequestPermissionDialogModel(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getRequestPermissionDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/TelegramApi;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getTelegramControllersGateway$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/gateway/TelegramControllersGateway;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p0

    return-object p0
.end method

.method private final autoDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final formatBotRequestParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "id"

    .line 159
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "query_id"

    .line 160
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 161
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 162
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot_name"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 158
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private final getRequestPermissionDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 167
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 168
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    iget-object v4, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_action_btn_text:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call attachViewState(view: CryptoRecipientView) first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attachViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    return-void
.end method

.method public loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 5

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 110
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->getAddressInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    new-instance p1, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    .line 54
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public requestAddressPermission(Ljava/lang/String;)V
    .locals 6

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 60
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 61
    invoke-virtual {v1, p1}, Lcom/smedialink/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->requestAllAddressesPermission(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p1, v0, p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 81
    invoke-direct {p0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v2

    .line 44
    new-instance v3, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v1, v3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
