.class public final Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;
.super Ljava/lang/Object;
.source "CryptoRecipientManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$Companion;,
        Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoRecipientManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,188:1\n14#2:189\n39#3,8:190\n39#3,8:198\n*S KotlinDebug\n*F\n+ 1 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n*L\n62#1:189\n81#1:190,8\n114#1:198,8\n*E\n"
.end annotation


# instance fields
.field private final cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private viewState:Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;)V
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
    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 35
    iput-object p2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 36
    iput-object p3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 37
    iput-object p4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 38
    iput-object p5, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 39
    iput-object p6, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 43
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$formatBotRequestParams(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->formatBotRequestParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRequestPermissionDialogModel(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/model/dialog/DialogModel;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getRequestPermissionDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getTelegramControllersGateway$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p0

    return-object p0
.end method

.method private final autoDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

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

    .line 163
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "query_id"

    .line 164
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 165
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 166
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bot_name"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 162
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private final getRequestPermissionDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 171
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 172
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_dialog_action_btn_text:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

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
.method public attachViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    return-void
.end method

.method public loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 5

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 111
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->getAddressInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->viewState:Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    .line 54
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

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
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->cryptoPermissionInteractor:Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 61
    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->requestAllAddressesPermission(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p1, v0, p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)V

    new-instance v3, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cryptoPermissionInteract\u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 81
    invoke-direct {p0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->getViewState()Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v2

    .line 44
    new-instance v3, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
