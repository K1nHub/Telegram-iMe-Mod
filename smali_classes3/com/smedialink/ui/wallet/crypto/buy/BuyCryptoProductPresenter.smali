.class public final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "BuyCryptoProductPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyCryptoProductPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,192:1\n39#2,8:193\n39#2,8:201\n39#2,8:209\n11335#3:217\n11670#3,3:218\n37#4,2:221\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n*L\n61#1:193,8\n84#1:201,8\n109#1:209,8\n183#1:217\n183#1:218,3\n183#1:221,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final initTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private lastUsedOrderId:Ljava/lang/String;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

.field private final tokenCode$delegate:Lkotlin/Lazy;

.field private final tokenInfo$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Ai9Dyp74NKAYf95du2O4Mgg8D1E(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts$lambda$1(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gz2tE14Il0-8tuDalPrVK5UnSz8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "initTokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simplexInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 32
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 33
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 35
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 36
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 40
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenCode$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenCode$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->tokenCode$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->tokenInfo$delegate:Lkotlin/Lazy;

    .line 42
    sget p1, Lorg/telegram/messenger/R$string;->common_dash:I

    invoke-interface {p3, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->lastUsedOrderId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getInitTokenCode$p(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTokenCode(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokenInfo(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveSupportedTokenCode(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resolveSupportedTokenCode(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastUsedOrderId$p(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->lastUsedOrderId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setupUiItems(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;[Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->setupUiItems([Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method private final getBuyingAmount(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v0

    invoke-static {p1, v0}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->common_dash:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getConfirmationDialogModel(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 162
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 163
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_description:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getBuyingAmount(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_action_txt:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getDefaultProducts()[Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;
    .locals 12

    .line 183
    invoke-static {}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->values()[Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v7, v0, v4

    .line 183
    new-instance v11, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/billing/CryptoProduct;Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11671
    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    return-object v0
.end method

.method private final getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->tokenCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method private final getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->tokenInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method private static final loadAvailableProducts$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadAvailableProducts$lambda$1(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showRefreshLoading(Z)V

    return-void
.end method

.method private final resetOrderIdToDefault()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_dash:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->lastUsedOrderId:Ljava/lang/String;

    return-void
.end method

.method private final resolveSupportedTokenCode(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 2

    .line 158
    sget-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSimplexAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    :goto_0
    return-object p1
.end method

.method private final setupUiItems([Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 3

    .line 171
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 172
    new-instance p1, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyFooterItem;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_footer_title:I

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_footer_description:I

    invoke-direct {p1, v1, v2}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyFooterItem;-><init>(II)V

    .line 171
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showUiItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getInformationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 46
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_description:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final loadAvailableProducts()V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 55
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object v2

    .line 56
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getAllAvailablePurchasesQuotes$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun loadAvailableProduct\u2026     .autoDispose()\n    }"

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 71
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getDefaultProducts()[Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->setupUiItems([Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V

    .line 150
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V

    return-void
.end method

.method public final prepareConfirmDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 1

    const-string v0, "selectedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getProduct()Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-interface {p2, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->openCustomPriceDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getConfirmationDialogModel(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showConfirmDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;Lcom/smedialink/model/dialog/DialogModel;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final processPaymentResult(Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult$Success;->INSTANCE:Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult$Success;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showSuccessPurchase()V

    .line 127
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult$Failed;->INSTANCE:Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult$Failed;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->lastUsedOrderId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showErrorPurchase(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resetOrderIdToDefault()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final purchase(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 9

    const-string v0, "currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 77
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, p1

    move-object v5, p2

    .line 76
    invoke-static/range {v1 .. v8}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "simplexInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 94
    invoke-static {p0, p1, v2, p2, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final purchase(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    const/4 v1, 0x0

    .line 101
    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v3

    .line 103
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v4

    float-to-int v4, v4

    .line 104
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v5

    .line 105
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-static/range {v0 .. v8}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "simplexInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$lambda$6$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$lambda$6$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$lambda$6$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$purchase$lambda$6$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 119
    invoke-static {p0, p1, v3, v0, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
