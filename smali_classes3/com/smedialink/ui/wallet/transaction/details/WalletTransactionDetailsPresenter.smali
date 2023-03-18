.class public final Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletTransactionDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionDetailsPresenter.kt\ncom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n39#2,8:433\n39#2,8:441\n1#3:449\n1549#4:450\n1620#4,3:451\n1549#4:454\n1620#4,3:455\n*S KotlinDebug\n*F\n+ 1 WalletTransactionDetailsPresenter.kt\ncom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter\n*L\n55#1:433,8\n70#1:441,8\n163#1:450\n163#1:451,3\n164#1:454\n164#1:455,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final boostInteractor:Lcom/smedialink/storage/domain/interactor/crypto/boost/BoostInteractor;

.field private final cancelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/smedialink/storage/domain/interactor/crypto/boost/BoostInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boostInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 39
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    .line 40
    iput-object p3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->boostInteractor:Lcom/smedialink/storage/domain/interactor/crypto/boost/BoostInteractor;

    .line 41
    iput-object p4, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 42
    iput-object p5, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 43
    iput-object p6, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p7, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-void
.end method

.method public static final synthetic access$copyAddress(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->copyAddress()V

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$startAskSupport(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startAskSupport()V

    return-void
.end method

.method public static final synthetic access$startBoostTransaction(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startBoostTransaction()V

    return-void
.end method

.method public static final synthetic access$startBrowserWithUrl(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startBrowserWithUrl()V

    return-void
.end method

.method public static final synthetic access$startCancelTransaction(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startCancelTransaction()V

    return-void
.end method

.method public static final synthetic access$startProfileScreen(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startProfileScreen()V

    return-void
.end method

.method public static final synthetic access$startSendScreen(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startSendScreen()V

    return-void
.end method

.method private final canAskSupport()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final canCancelOrBoost()Z
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 246
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 247
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getStatus()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v1

    sget-object v4, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-ne v1, v4, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getType()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 252
    :cond_2
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_5

    .line 253
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v4, Lcom/smedialink/storage/data/network/model/response/base/Status;->PENDING:Lcom/smedialink/storage/data/network/model/response/base/Status;

    if-ne v1, v4, :cond_1

    .line 255
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_1

    .line 256
    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    if-ne v0, v1, :cond_1

    :cond_4
    :goto_2
    return v2

    .line 253
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final canCopy()Z
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-nez v0, :cond_3

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method private final canOpenProfile()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->hasUser(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final canOpenScanSite()Z
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 272
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 273
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 274
    :cond_1
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_5

    .line 275
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 277
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_2
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_3
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_4
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v2

    .line 275
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final canSend()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final copyAddress()V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->actionCopyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method private final getConfirmBoostDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    new-instance v4, Lcom/smedialink/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final getConfirmCancelDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    new-instance v4, Lcom/smedialink/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final getCopyTitle()I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 350
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    if-eqz v1, :cond_0

    .line 351
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_hash:I

    goto :goto_1

    .line 352
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_4

    .line 353
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 354
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v1, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_token_details_action_copy_order_id:I

    goto :goto_1

    .line 355
    :cond_1
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    :goto_0
    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_hash:I

    goto :goto_1

    .line 356
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    :goto_1
    return v0

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getCopyValue()Ljava/lang/String;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 361
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 363
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_7

    .line 364
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 365
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 366
    :cond_2
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_3
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 368
    :cond_4
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 369
    :cond_5
    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, ""

    :goto_1
    return-object v0

    .line 370
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getFee()Ljava/lang/String;
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 379
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 380
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getFee()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 382
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->getValue()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v1

    .line 383
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    .line 384
    iget-object v4, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v4}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getStatus()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v4

    sget-object v5, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 386
    :cond_2
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_6

    .line 387
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    .line 390
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v5, Lcom/smedialink/storage/data/network/model/response/base/Status;->PENDING:Lcom/smedialink/storage/data/network/model/response/base/Status;

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move-object v0, v4

    .line 395
    :goto_1
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->fee_nothing:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 398
    :cond_4
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v3, v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v4

    invoke-static {v1, v4}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_5

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    return-object v0

    .line 387
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 336
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getOpenTitle()Ljava/lang/String;
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 204
    sget v1, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 207
    instance-of v4, v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    if-eqz v4, :cond_0

    .line 208
    check-cast v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    goto :goto_0

    .line 209
    :cond_0
    instance-of v4, v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v4, :cond_1

    .line 210
    check-cast v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    .line 211
    :goto_0
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getScannerName()I

    move-result v3

    .line 205
    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 203
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getRecipientId(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 1

    .line 406
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getRecipientUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 407
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;->getInvitedUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final getRecipientOrSenderOrElseTitle(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 2

    .line 136
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_simplex_order_id_title:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_transaction_hash_title:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p1

    sget-object v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 141
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_recipient_title:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_title:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final getRecipientOrSenderOrElseValue(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 4

    .line 147
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_referral:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;->getInvitedUserId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-interface {v0, v2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Lottery;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Registration;

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_bonus:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 149
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getRecipientUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 150
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 151
    :cond_4
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 152
    :cond_5
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 153
    :cond_6
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 156
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    :goto_1
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 155
    :cond_9
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getSenderAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 159
    :cond_a
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final getScanIconResId()I
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 217
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 221
    :goto_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getScannerIcon()I

    move-result v0

    return v0

    .line 220
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getScanUrl()Ljava/lang/String;
    .locals 6

    .line 312
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 313
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 314
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_9

    .line 315
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 319
    :cond_1
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_a

    .line 320
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 322
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 323
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto/16 :goto_6

    .line 324
    :cond_3
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 325
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 326
    :cond_5
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    .line 327
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 328
    :cond_7
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_9

    .line 329
    sget-object v2, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTxUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    :goto_6
    return-object v2

    .line 320
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final hasUser(Ljava/lang/Long;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final isFeeEnabled()Z
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 225
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getFee()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    :cond_1
    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_3

    .line 228
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_2

    .line 231
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SWAP_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    if-ne v0, v1, :cond_0

    :cond_2
    :goto_0
    return v2

    .line 228
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final resolveTransactionAction()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/smedialink/model/wallet/transaction/TransactionActionItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/Pair;

    .line 170
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canAskSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Support;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Support;

    new-instance v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 171
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canSend()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Send;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Send;

    new-instance v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$2;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$2;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 172
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canOpenProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Profile;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Profile;

    new-instance v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$3;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$3;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 173
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canOpenScanSite()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanIconResId()I

    move-result v4

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getOpenTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$4;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$4;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 174
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyTitle()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;-><init>(I)V

    new-instance v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$5;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$5;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 175
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCancelOrBoost()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;

    new-instance v4, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$6;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$6;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 176
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCancelOrBoost()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Boost;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Boost;

    new-instance v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$7;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$7;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    :cond_6
    aput-object v2, v0, v1

    .line 169
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final setupTransactionActions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/smedialink/model/wallet/transaction/TransactionActionItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lkotlin/Pair;

    .line 163
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/model/wallet/transaction/TransactionActionItem;

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lkotlin/Pair;

    .line 164
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 1621
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupTransactionActions(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final startAskSupport()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 303
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    const-string v1, "https://support.simplex.com/hc/en-gb/categories/360002483279-I-am-buying-with-a-credit-debit-card"

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final startBoostTransaction()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/data/network/model/response/base/Status;->PENDING:Lcom/smedialink/storage/data/network/model/response/base/Status;

    if-ne v1, v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getConfirmBoostDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v2

    new-instance v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startBoostTransaction$1$1;

    invoke-direct {v3, p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startBoostTransaction$1$1;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V

    invoke-interface {v1, v2, v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmBoostDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final startBrowserWithUrl()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final startCancelTransaction()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/data/network/model/response/base/Status;->PENDING:Lcom/smedialink/storage/data/network/model/response/base/Status;

    if-ne v1, v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getConfirmCancelDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v2

    new-instance v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;

    invoke-direct {v3, p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V

    invoke-interface {v1, v2, v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmCancelDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final startProfileScreen()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-nez v1, :cond_0

    return-void

    .line 342
    :cond_0
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-interface {v2, v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->openProfileScreen(J)V

    :cond_1
    return-void
.end method

.method private final startSendScreen()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-nez v1, :cond_0

    return-void

    .line 288
    :cond_0
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 291
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 292
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getNetworkTypeByProcessing(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 293
    iget-object v3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getRecipientAddress()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-interface {v1, v2, v0, v3}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->openSendScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final boostTransaction(Ljava/lang/String;)V
    .locals 5

    const-string v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->boostInteractor:Lcom/smedialink/storage/domain/interactor/crypto/boost/BoostInteractor;

    .line 67
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/boost/BoostInteractor;->boostEthTransaction(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "boostInteractor\n        \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 77
    invoke-static {p0, p1, v4, v0, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelTransaction(Ljava/lang/String;)V
    .locals 5

    const-string v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-nez v1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    .line 52
    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelEthTransaction(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cancelInteractor\n       \u2026(schedulersProvider.ui())"

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, v4, v0, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 19

    move-object/from16 v0, p0

    .line 89
    iget-object v1, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    .line 90
    instance-of v2, v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 91
    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    move-result-object v1

    .line 92
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 93
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getIcon()I

    move-result v6

    .line 94
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v7}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v13

    .line 95
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTransactionTitle(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v7

    .line 96
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getAmount(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v8

    .line 97
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->wallet_transaction_details_transaction_hash_title:I

    invoke-interface {v2, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    const-string v2, "-"

    :cond_1
    move-object v10, v2

    .line 100
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v11, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v11, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-virtual {v11}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getTitle()I

    move-result v11

    invoke-interface {v2, v11}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->isFeeEnabled()Z

    move-result v16

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getFee()Ljava/lang/String;

    move-result-object v15

    .line 103
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getStatusText(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v12

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v17, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    .line 105
    :goto_1
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getStakingIconResId()I

    move-result v1

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 92
    invoke-interface/range {v5 .. v18}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V

    goto/16 :goto_5

    .line 108
    :cond_3
    instance-of v2, v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    if-eqz v2, :cond_7

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v1

    .line 109
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 110
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransactionIcon()I

    move-result v6

    .line 111
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v7}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v13

    .line 112
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransactionTitle(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v7

    .line 113
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getAmount(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientOrSenderOrElseTitle(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientOrSenderOrElseValue(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v10

    .line 116
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;

    check-cast v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;->getItem()Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    instance-of v11, v2, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    goto :goto_2

    :cond_4
    move-object v2, v12

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getPayloadMessage()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_5
    move-object v11, v12

    .line 117
    :goto_3
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;->getTitle()I

    move-result v12

    invoke-interface {v2, v12}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->isFeeEnabled()Z

    move-result v16

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getFee()Ljava/lang/String;

    move-result-object v15

    .line 120
    iget-object v2, v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/base/Status;->getTitle()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v17, 0x1

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    const/16 v18, 0x0

    .line 109
    invoke-interface/range {v5 .. v18}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 127
    :cond_7
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resolveTransactionAction()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->setupTransactionActions(Ljava/util/List;)V

    return-void
.end method

.method public final shareTransaction()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->shareTransactionInfo(Ljava/lang/String;)V

    return-void
.end method
