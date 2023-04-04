.class public final Lcom/iMe/manager/wallet/create/WalletCreateManager;
.super Ljava/lang/Object;
.source "WalletCreateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCreateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,288:1\n39#2,8:289\n39#2,8:297\n39#2,8:305\n1855#3,2:313\n1549#3:315\n1620#3,3:316\n37#4,2:319\n*S KotlinDebug\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n*L\n119#1:289,8\n141#1:297,8\n160#1:305,8\n222#1:313,2\n93#1:315\n93#1:316,3\n95#1:319,2\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private linkedCryptoWalletAddress:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;


# direct methods
.method public static synthetic $r8$lambda$81M2Tw8mLRYBvF1gAqieuI6-tHM(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$3$lambda$1(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Baa12-_Omd3FZNMVAJRLGoQID_I(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda$6(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSM4VJt7PxGuCm617MI9Vkcn3tY(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$3$lambda$2(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RK-8K7i_DRrGT4Hb97-wiGeDNe4(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->activateBib39BasedWallet()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z7B987W0jFTMlBrhovsHEJf1MRI(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$3$lambda$1$lambda$0(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRx-yz5SAEd1Fb9ofBAZaBA44ts(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda$6$lambda$5(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 32
    iput-object p2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 33
    iput-object p3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 34
    iput-object p4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 35
    iput-object p5, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 36
    iput-object p6, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 43
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openScreenByWalletCreationType(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final activateBib39BasedWallet()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 138
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->activateBip39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    .line 44
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getActivationConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 200
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 201
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_activation_confirmation_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_activation_confirmation_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getAnimatedSpannableDialogModelByType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;
    .locals 1

    .line 209
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCreateWalletAnimatedSpannableDialogModel()Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    move-result-object p1

    goto :goto_1

    .line 210
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getImportWalletAnimatedSpannableDialogModel()Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getCreateWalletAnimatedSpannableDialogModel()Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/style/CharacterStyle;

    .line 216
    new-instance v1, Lorg/telegram/ui/Components/URLSpanReplacement;

    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description_privacy_link:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 217
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$color;->crypto_product_custom:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 215
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description_privacy:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/CharacterStyle;

    .line 222
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "%s"

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    .line 229
    invoke-virtual {v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    new-instance v1, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 234
    sget v2, Lorg/telegram/messenger/R$raw;->fork_crypto_wallet:I

    .line 235
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    .line 236
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private final getCreateWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 7

    .line 256
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 257
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 259
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 258
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method private final getImportWalletAnimatedSpannableDialogModel()Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;
    .locals 6

    .line 242
    new-instance v0, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 243
    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_import:I

    .line 244
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_start_dialog_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_start_dialog_description:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final getImportWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 7

    .line 266
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 267
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 269
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 268
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRestoreWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 7

    .line 276
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 277
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 279
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 278
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call attachViewState(view: ViewManagerDelegate<T>) first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getWarningDialogModelByType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)Lcom/iMe/model/dialog/DialogModel;
    .locals 1

    .line 251
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCreateWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    goto :goto_0

    .line 252
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getImportWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    goto :goto_0

    .line 253
    :cond_1
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getRestoreWalletWarningDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final openScreenByWalletCreationType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object p2, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {v0, p3, p2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView$-CC;->openImportWalletScreen$default(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object p2, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic openScreenByWalletCreationType$default(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 184
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 182
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareCreateWalletFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v4

    .line 153
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 155
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1, v4}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    .line 44
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1, v4}, Lcom/iMe/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    goto :goto_1

    .line 174
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType$default(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final startChooseWalletOptionsFlow$lambda$6(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 94
    iget-object v5, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getStringResId()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 91
    new-instance v3, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static final startChooseWalletOptionsFlow$lambda$6$lambda$5(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$walletCreationTypes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 99
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {p1, p3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getByIndex(I)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    move-result-object p1

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda$3$lambda$1(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 2

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-direct {p1, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAnimatedSpannableDialogModelByType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    move-result-object v0

    new-instance v1, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {p0, v0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda$3$lambda$1$lambda$0(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->prepareCreateWalletFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda$3$lambda$2(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->prepareCreateWalletFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public getAvailableWalletCreationTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyBip39PhraseBasedWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->isRestoreAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getValuesOrdered(Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLinkedCryptoWalletAddress()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedCryptoWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isRestoreAvailable()Z
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public loadCryptoInformation(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 5

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 116
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 119
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public setLinkedCryptoWalletAddress(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedCryptoWalletAddress:Ljava/lang/String;

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAvailableWalletCreationTypes()Ljava/util/List;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->loadCryptoInformation(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 4

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 61
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->isRestoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    move-object v1, p1

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-direct {p0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getWarningDialogModelByType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 63
    :cond_0
    new-instance v3, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAlreadyCreatedWalletWarningDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 72
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-direct {p0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAnimatedSpannableDialogModelByType(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 77
    :cond_2
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    if-eqz p1, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getActivationConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    .line 79
    new-instance v1, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    .line 77
    invoke-interface {v0, p1, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method
