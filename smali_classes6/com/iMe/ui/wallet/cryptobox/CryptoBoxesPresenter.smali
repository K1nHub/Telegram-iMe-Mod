.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CryptoBoxesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 5 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,260:1\n11335#2:261\n11670#2,3:262\n288#3,2:265\n1549#3:294\n1620#3,3:295\n63#4,12:267\n63#4,12:282\n63#4,12:300\n16#5,3:279\n37#6,2:298\n1#7:312\n*S KotlinDebug\n*F\n+ 1 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter\n*L\n83#1:261\n83#1:262,3\n109#1:265,2\n181#1:294\n181#1:295,3\n125#1:267,12\n161#1:282,12\n233#1:300,12\n160#1:279,3\n185#1:298,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private final cryptoBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoBoxesItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/cryptobox/CryptoBoxItem;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoBoxesListHeaderTitle:Ljava/lang/String;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rootItems$delegate:Lkotlin/Lazy;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final walletBotId$delegate:Lkotlin/Lazy;

.field private final walletBotUsername$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Yid-xEu2TvNPdYH0WSqdMs5SIkk(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onWalletBotAdminRightsRequired$lambda$11(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lfGRfuTsExrKrFJMFtZdwBxwWoc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->prepareCryptoBoxCreation$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;)V
    .locals 1

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramApi"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 42
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 43
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 44
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 45
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 46
    iput-object p6, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 47
    iput-object p7, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 50
    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$rootItems$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$rootItems$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->rootItems$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxes:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesItems:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->initCryptoBoxesListHeaderTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesListHeaderTitle:Ljava/lang/String;

    .line 54
    sget-object p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotId$2;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotId$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->walletBotId$delegate:Lkotlin/Lazy;

    .line 55
    sget-object p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$walletBotUsername$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->walletBotUsername$delegate:Lkotlin/Lazy;

    .line 56
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->availableNetworks:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getInitialNetwork()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getWalletBotId(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)J
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getWalletBotId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getWalletBotUsername(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getWalletBotUsername()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootItems(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->initRootItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onWalletBotAdminRightsRequired(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onWalletBotAdminRightsRequired(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static final synthetic access$renderCryptoBoxesItems(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Ljava/util/List;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderCryptoBoxesItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method private final getInitialNetwork()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->isEVM()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 258
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    return-object v0
.end method

.method private final getRootItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->rootItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getSelectedOrderType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCryptoBoxesOrderType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v0

    return-object v0
.end method

.method private final getWalletBotId()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->walletBotId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getWalletBotUsername()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->walletBotUsername$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final initCryptoBoxesListHeaderTitle()Ljava/lang/String;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 200
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->cryptoboxes_last_list_title:I

    goto :goto_0

    .line 201
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->cryptoboxes_all_list_title:I

    .line 199
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final initRootItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/common/NoChildNode;

    .line 193
    new-instance v1, Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;

    invoke-direct {v1}, Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 194
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;

    invoke-direct {v2, v1}, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 192
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final listenEvents()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

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

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 167
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic loadCryptoBoxes$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes(Z)V

    return-void
.end method

.method private final onWalletBotAdminRightsRequired(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    .line 244
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    .line 245
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 246
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    sget v5, Lorg/telegram/messenger/R$string;->Allow:I

    const-string v6, "Allow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final onWalletBotAdminRightsRequired$lambda$11(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getWalletBotId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private final prepareCryptoBoxCreation(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 215
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/manager/TelegramApi$-CC;->getFullChatInfoById$default(Lcom/iMe/manager/TelegramApi;JLorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun prepareCrypt\u2026     .autoDispose()\n    }"

    .line 216
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
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

    .line 233
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p1, p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 240
    invoke-static {p0, p1, v4, v0, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final prepareCryptoBoxCreation$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final renderCryptoBoxesItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxes:Ljava/util/List;

    .line 176
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesItems:Ljava/util/List;

    .line 180
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxes:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 181
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/iMe/mapper/cryptobox/CryptoBoxUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/cryptobox/CryptoBoxItem;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesItems:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/iMe/model/cryptobox/CryptoBoxItem;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 185
    check-cast p1, [Lcom/iMe/model/cryptobox/CryptoBoxItem;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;)V

    goto :goto_1

    .line 187
    :cond_1
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    :goto_1
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 171
    new-instance v1, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v1, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method private final varargs renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    .line 206
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getRootItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 207
    new-instance v2, Lcom/iMe/model/cryptobox/CryptoBoxesListHeaderItem;

    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxesListHeaderTitle:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/iMe/model/cryptobox/CryptoBoxesListHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final setSelectedOrderType(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setCryptoBoxesOrderType(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)V

    return-void
.end method


# virtual methods
.method public final loadCryptoBoxes(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 115
    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 120
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iMe/utils/extentions/model/telegram/ChatExtKt;->getBotApiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getSelectedOrderType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v1, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getCryptoBoxesList(Ljava/lang/Long;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCreateCryptoBoxClick()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->prepareCryptoBoxCreation(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->openCryptoBoxCreationScreen()V

    :goto_0
    return-void
.end method

.method public final onCryptoBoxItemClick(Lcom/iMe/model/cryptobox/CryptoBoxItem;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    .line 109
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoBoxes:Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 109
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    if-nez v2, :cond_2

    return-void

    .line 108
    :cond_2
    invoke-interface {v0, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->openCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->listenEvents()V

    .line 154
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, p1, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onOrderStrategySelected(I)V
    .locals 2

    .line 91
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;->mapByOrdinal(I)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->setSelectedOrderType(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, p1, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onSelectNetworkClick()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->availableNetworks:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method

.method public final onSelectOrderClick()V
    .locals 9

    .line 78
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    .line 79
    new-instance v8, Lcom/iMe/model/dialog/DialogModel;

    .line 80
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->choose_tokens_order_type_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    .line 79
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v1

    .line 11335
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 84
    iget-object v6, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->getTextResId()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->getSelectedOrderType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 78
    invoke-interface {v0, v8, v2, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->showChooseOrderDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V

    return-void
.end method

.method public final openCryptoBoxCreationScreen()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->openCryptoBoxCreationScreen(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method
