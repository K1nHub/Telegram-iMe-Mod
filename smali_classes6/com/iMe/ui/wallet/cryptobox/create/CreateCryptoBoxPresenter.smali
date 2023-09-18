.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateCryptoBoxPresenter.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$Companion;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;",
        "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCryptoBoxPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n63#2,12:762\n63#2,12:786\n63#2,12:798\n63#2,12:810\n63#2,12:823\n63#2,12:836\n63#2,12:848\n63#2,12:860\n6#3,6:774\n6#3,6:780\n14#4:822\n1#5:835\n*S KotlinDebug\n*F\n+ 1 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter\n*L\n133#1:762,12\n218#1:786,12\n330#1:798,12\n368#1:810,12\n474#1:823,12\n541#1:836,12\n649#1:848,12\n683#1:860,12\n172#1:774,6\n179#1:780,6\n442#1:822\n*E\n"
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

.field private creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private final cryptoBoxParamsSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private currentFeeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

.field private currentStep:Lcom/iMe/model/staking/TransactionStep;

.field private feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

.field private isFeeTokenTransactionArgs:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedAmount:Ljava/math/BigDecimal;

.field private selectedCapacity:Ljava/lang/Integer;

.field private selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private selectedDescription:Ljava/lang/String;

.field private selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private shouldReloadRulesOnConnected:Z

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private tokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

.field private tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

.field private transactionArgs:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

.field private final walletBotId:J

.field private final walletBotUsername:Ljava/lang/String;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$3nofVd1rLqidj_3fwuxRdnCJATk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B7K6yrkS4eV2W7rQyrJ0B_TT4EU(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onWalletBotAdminRightsRequired$lambda$18(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_ZX9vQCfNjgDm81lijMCHh8wLA(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->executeTokenApproval()V

    return-void
.end method

.method public static synthetic $r8$lambda$TLUrgkg0tmxru3CQQIAgruEKCuY(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->confirmCryptoboxExecution$lambda$19(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQI8Upe-4sOQOvsrCpGzpthilxo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onChatSelected$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xoZQNRwI1nc5-JJ4rytsYzV64Bc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->subscribeToCryptoBoxParamsSubject$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramControllersGateway"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramApi"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 66
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 67
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 68
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 69
    iput-object p6, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 70
    iput-object p7, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 71
    iput-object p8, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 72
    iput-object p9, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 73
    iput-object p10, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 76
    sget-object p3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->availableNetworks:Ljava/util/List;

    .line 78
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p3

    const-string p4, "create()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxParamsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 79
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletBotId:J

    .line 80
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletBotUsername:Ljava/lang/String;

    .line 85
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getInitialNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 86
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string p1, ""

    .line 90
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedDescription:Ljava/lang/String;

    .line 94
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isFeeTokenTransactionArgs:Z

    .line 97
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    return-void
.end method

.method public static final synthetic access$checkTokenApproval(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V

    return-void
.end method

.method public static final synthetic access$getCreationRules$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    return-object p0
.end method

.method public static final synthetic access$getCryptoBoxInteractor$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    return-object p0
.end method

.method public static final synthetic access$getCurrentStep$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/model/staking/TransactionStep;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    return-object p0
.end method

.method public static final synthetic access$getFeeTokenApprovalStatus$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSelectedAmount$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/math/BigDecimal;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static final synthetic access$getSelectedCapacity$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/lang/Integer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkItem$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-object p0
.end method

.method public static final synthetic access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getStepByApprovalStatus(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;Ljava/lang/String;)Lcom/iMe/model/staking/TransactionStep;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getStepByApprovalStatus(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;Ljava/lang/String;)Lcom/iMe/model/staking/TransactionStep;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getWalletBotId$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletBotId:J

    return-wide v0
.end method

.method public static final synthetic access$getWalletBotUsername$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletBotUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isDone(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isFeeTokenTransactionArgs$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isFeeTokenTransactionArgs:Z

    return p0
.end method

.method public static final synthetic access$onApprovalCheckError(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZZLcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onApprovalCheckError(ZZLcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$onApprovalCheckSuccess(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZLcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onApprovalCheckSuccess(ZLcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public static final synthetic access$onWalletBotAdminRightsRequired(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onWalletBotAdminRightsRequired(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static final synthetic access$pushCurrentCryptoBoxParamsValues(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->pushCurrentCryptoBoxParamsValues()V

    return-void
.end method

.method public static final synthetic access$renderCryptoBoxRulesPlaceholderData(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->renderCryptoBoxRulesPlaceholderData(I)V

    return-void
.end method

.method public static final synthetic access$setCreationRules$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    return-void
.end method

.method public static final synthetic access$setFeeTokenApprovalStatus$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    return-void
.end method

.method public static final synthetic access$setSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$setShouldReloadRulesOnConnected$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->shouldReloadRulesOnConnected:Z

    return-void
.end method

.method public static final synthetic access$setTokenApprovalStatus$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    return-void
.end method

.method public static final synthetic access$setTransactionArgs(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setTransactionArgs(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Z)V

    return-void
.end method

.method public static final synthetic access$setTransactionArgs$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->transactionArgs:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    return-void
.end method

.method public static final synthetic access$setupTransactionAction(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method private final checkTokenApproval(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 434
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xf

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "private fun checkTokenAp\u2026y { autoDispose() }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$flatMapSuccess$1;-><init>(ZLcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 435
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;ZZ)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 487
    invoke-static {p0, p1, p2, p3, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    .line 432
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic checkTokenApproval$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 426
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V

    return-void
.end method

.method private static final checkTokenApproval$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final confirmCryptoboxExecution()V
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string/jumbo v2, "valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string/jumbo v1, "this.multiply(other)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 592
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 590
    :goto_0
    invoke-static {v0, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 594
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, ""

    .line 589
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getCreateConfirmationDialogModel(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v0

    .line 588
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    invoke-interface {v1, v0, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final confirmCryptoboxExecution$lambda$19(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->executeAction()V

    return-void
.end method

.method private final confirmTokenApprovalExecution(Ljava/lang/String;)V
    .locals 2

    .line 567
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 568
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    .line 569
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    .line 567
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final executeAction()V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/telegram/ChatExtKt;->getBotApiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->transactionArgs:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 675
    :cond_1
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 677
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 678
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedDescription:Ljava/lang/String;

    .line 676
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->sendCreationExecute(JLjava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 681
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    const-string/jumbo v3, "viewState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 683
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 697
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void

    .line 671
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final executeTokenApproval()V
    .locals 5

    .line 536
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 537
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 538
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->transactionArgs:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->sendApprovalExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
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

    .line 541
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 563
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 716
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 717
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 718
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 719
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 718
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 722
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 723
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCreateConfirmationDialogModel(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 730
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 731
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->profile_twitter_link_confirmation_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 732
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 733
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_confirmation_description:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 732
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 737
    iget-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {p2, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 738
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_action_type_create:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getInitialNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    if-nez p1, :cond_1

    .line 702
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->isEVM()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 703
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    return-object p1
.end method

.method private final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getNotificationCenterInstance$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method private final getStepByApprovalStatus(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;Ljava/lang/String;)Lcom/iMe/model/staking/TransactionStep;
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 403
    :cond_0
    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 406
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    goto :goto_1

    .line 407
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 405
    :cond_2
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    goto :goto_1

    .line 404
    :cond_3
    new-instance p1, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    invoke-direct {p1, p2}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_4
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    :goto_1
    return-object p1
.end method

.method private final isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z
    .locals 1

    .line 755
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->DONE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final loadInitialData()V
    .locals 3

    .line 357
    sget-object v0, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V

    .line 358
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resetTransactionsData()V

    .line 359
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->loadRules()V

    return-void
.end method

.method private final loadRules()V
    .locals 5

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->shouldReloadRulesOnConnected:Z

    .line 364
    sget v0, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->renderCryptoBoxRulesPlaceholderData(I)V

    .line 365
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 366
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getCreationRules(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$loadRules$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 396
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final onApprovalCheckError(ZZLcom/iMe/storage/domain/model/Result$Error;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 529
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    :cond_0
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V

    .line 532
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {p1, p3, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method private final onApprovalCheckSuccess(ZLcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 496
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    if-eq p1, v0, :cond_0

    .line 497
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 500
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 501
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    if-nez v1, :cond_2

    .line 504
    sget-object p2, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 506
    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZILjava/lang/Object;)V

    .line 507
    sget-object p2, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    .line 499
    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    goto :goto_2

    .line 515
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    if-eq p1, v0, :cond_5

    .line 516
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 518
    :cond_5
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->DONE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    if-ne p1, v0, :cond_6

    .line 519
    invoke-direct {p0, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final onChatSelected$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final onConnectionStateChanged()V
    .locals 4

    .line 274
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->shouldReloadRulesOnConnected:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getConnectionsManager$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->loadInitialData()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final onWalletBotAdminRightsRequired(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    .line 574
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 575
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 576
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 578
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 579
    sget v5, Lorg/telegram/messenger/R$string;->Allow:I

    const-string v6, "Allow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final onWalletBotAdminRightsRequired$lambda$18(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-wide v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletBotId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private final prepareCreation()V
    .locals 6

    .line 640
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 642
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 643
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    .line 644
    :cond_1
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    invoke-static {v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 645
    iget-object v5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v5

    .line 641
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getCreationPrepareData(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 649
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$prepareCreation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 664
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final pushCurrentCryptoBoxParamsValues()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxParamsSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final renderCryptoBoxRulesPlaceholderData(I)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 744
    new-instance v1, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;

    invoke-direct {v1, p1, p1, p1, p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 743
    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderCryptoBoxInfo(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V

    return-void
.end method

.method private final renderSelectedChat()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private final resetTransactionsData()V
    .locals 2

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    .line 284
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->feeTokenApprovalStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isDone(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->tokenApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v1, 0x1

    .line 286
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setTransactionArgs(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Z)V

    :cond_0
    return-void
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 5

    .line 706
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 707
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 708
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    .line 710
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;)V

    .line 706
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setTransactionArgs(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Z)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->transactionArgs:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    .line 412
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->isFeeTokenTransactionArgs:Z

    return-void
.end method

.method private final setupTransactionAction(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 1

    .line 416
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 417
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentFeeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    .line 419
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentFeeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    invoke-interface {p1, p2, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderTransactionActionBlock(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method static synthetic setupTransactionAction$default(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 415
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->setupTransactionAction(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method private final subscribeToCryptoBoxParamsSubject()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->cryptoBoxParamsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 296
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToC\u2026     .autoDispose()\n    }"

    .line 297
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 353
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToCryptoBoxParamsSubject$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final validatePrepareConditions()V
    .locals 7

    .line 600
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string/jumbo v2, "valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string/jumbo v1, "this.multiply(other)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-nez v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_select_token_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    if-nez v1, :cond_1

    .line 607
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_enter_amount_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :cond_1
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_validation_zero_amount_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 615
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_enter_capacity_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_3
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getMinimalCapacity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 619
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 620
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 621
    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_enter_capacity_threshold_error:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 622
    iget-object v6, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getMinimalCapacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    .line 620
    invoke-interface {v1, v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    :cond_6
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v1

    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 628
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->runNoEnoughMoneyFlow()V

    goto :goto_1

    .line 631
    :cond_8
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_9

    .line 632
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_create_select_chat_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 635
    :cond_9
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->prepareCreation()V

    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onConnectionStateChanged()V

    :cond_0
    return-void
.end method

.method public final onActionClick()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 235
    instance-of v1, v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    invoke-virtual {v0}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->getTokenTicker()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->confirmTokenApprovalExecution(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->validatePrepareConditions()V

    goto :goto_0

    .line 237
    :cond_1
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->confirmCryptoboxExecution()V

    goto :goto_0

    .line 238
    :cond_2
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_action_loading_wait:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->loadInitialData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedAmount:Ljava/math/BigDecimal;

    .line 174
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->pushCurrentCryptoBoxParamsValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onCapacityChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedCapacity:Ljava/lang/Integer;

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->pushCurrentCryptoBoxParamsValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onChatSelected(Ljava/lang/Long;)V
    .locals 11

    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const-string/jumbo v4, "telegramControllersGatew\u2026roller().getChat(-chatId)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/manager/TelegramApi$-CC;->getFullChatInfoById$default(Lcom/iMe/manager/TelegramApi;JLorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 201
    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1;

    invoke-direct {v4, p0, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance v5, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v5}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v4, "fun onChatSelected(chatI\u2026     .autoDispose()\n    }"

    .line 201
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    const-string/jumbo v5, "viewState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v5, 0x2

    invoke-static {p1, v4, v2, v5, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, v0, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onChatSelected$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {p0, p1, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCryptoBoxInfoClick()V
    .locals 10

    .line 245
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->creationRules:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 247
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 248
    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 249
    sget-object v6, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeePerUser()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 247
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showCryptoBoxInfoDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onDescriptionChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedDescription:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 264
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 257
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->subscribeToCryptoBoxParamsSubject()V

    .line 258
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->renderSelectedChat()V

    .line 260
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->loadInitialData()V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 107
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->resetSelectedToken()V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->loadInitialData()V

    return-void
.end method

.method public final onSelectChatClick()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openSelectChatScreen(Ljava/lang/Long;)V

    return-void
.end method

.method public final onSelectNetworkClick()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->availableNetworks:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method

.method public final onSelectTokenClick()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openSelectTokenScreen(Ljava/lang/String;)V

    return-void
.end method

.method public final onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    const-string/jumbo v0, "selectedToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->resetTransactionsData()V

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 127
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object p1

    .line 129
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 126
    invoke-virtual {v0, p1, v3, v2}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance(Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v2, "viewState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v0, v2, v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v4, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p0, p1, v1, v3, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onWalletBotAdminRightsGranted(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 230
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->renderSelectedChat()V

    return-void
.end method
