.class public final Lcom/smedialink/manager/wallet/create/WalletCreateManager;
.super Ljava/lang/Object;
.source "WalletCreateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCreateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCreateManager.kt\ncom/smedialink/manager/wallet/create/WalletCreateManager\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,240:1\n39#2,6:241\n39#2,6:247\n1849#3,2:253\n37#4:255\n36#4,3:256\n*S KotlinDebug\n*F\n+ 1 WalletCreateManager.kt\ncom/smedialink/manager/wallet/create/WalletCreateManager\n*L\n109#1:241,6\n131#1:247,6\n174#1:253,2\n97#1:255\n97#1:256,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private linkedCryptoWalletAddress:Ljava/lang/String;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private viewState:Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;


# direct methods
.method public static synthetic $r8$lambda$EyBOUTgKQXoX1owhxYtdg1vewS0(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda-3$lambda-1$lambda-0(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HdqNl1lNwk5UXvYSVbiJmMM33nE(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda-6$lambda-5(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_43lJUV9nAU6dAILLlEKo_iVjss(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda-3$lambda-2(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jz0HMjw7OFdVMwyrdfVB2tvqJC0(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda-3$lambda-1(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kPWZ9-wyrmMA9m_kPC5BJqo09XE(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda-6(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 30
    iput-object p2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 31
    iput-object p3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 33
    iput-object p5, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 41
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openScreenByWalletCreationType(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final getAnimatedSpannableDialogModelByType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
    .locals 1

    .line 160
    sget-object v0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getImportWalletAnimatedSpannableDialogModel()Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    move-result-object p1

    goto :goto_1

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getCreateWalletAnimatedSpannableDialogModel()Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getCreateWalletAnimatedSpannableDialogModel()Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/style/CharacterStyle;

    .line 168
    new-instance v1, Lorg/telegram/ui/Components/URLSpanReplacement;

    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description_privacy_link:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 169
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$color;->crypto_product_custom:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 167
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description_privacy:I

    invoke-interface {v1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/CharacterStyle;

    .line 174
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_description:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 179
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

    .line 181
    invoke-virtual {v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    new-instance v1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    .line 186
    sget v2, Lorg/telegram/messenger/R$raw;->fork_crypto_wallet:I

    .line 187
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_title:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    .line 188
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private final getCreateWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 208
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 209
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 211
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 212
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 210
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getImportWalletAnimatedSpannableDialogModel()Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
    .locals 6

    .line 194
    new-instance v0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    .line 195
    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_import:I

    .line 196
    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_start_dialog_title:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_start_dialog_description:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final getImportWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 218
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 219
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 221
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 222
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 220
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRestoreWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 228
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 229
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_eth_wallet_warning_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 231
    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet_warning_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 230
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v4, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet_warning_dialog_action_button:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->viewState:Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call attachViewState(view: ViewManagerDelegate<T>) first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getWarningDialogModelByType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 1

    .line 202
    sget-object v0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getRestoreWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getImportWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getCreateWalletWarningDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final openScreenByWalletCreationType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 80
    invoke-static {v0, p3, p1, p2, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView$DefaultImpls;->openImportWalletScreen$default(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic openScreenByWalletCreationType$default(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 72
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareCreateWalletFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v4

    .line 123
    sget-object v0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 145
    invoke-static/range {v1 .. v6}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->openScreenByWalletCreationType$default(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 126
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1, v4}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v2, v5}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->viewState:Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    .line 44
    new-instance v2, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1, v4}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :goto_0
    return-void
.end method

.method private static final startChooseWalletOptionsFlow$lambda-6(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 95
    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet:I

    invoke-interface {v3, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 96
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->isRestoreAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet:I

    invoke-interface {v3, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 93
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 91
    new-instance v3, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static final startChooseWalletOptionsFlow$lambda-6$lambda-5(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->Companion:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;

    invoke-virtual {p1, p2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Companion;->getByIndex(I)Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda-3$lambda-1(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 2

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p1, p2}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getAnimatedSpannableDialogModelByType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    move-result-object v0

    new-instance v1, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {p0, v0, v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda-3$lambda-1$lambda-0(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->prepareCreateWalletFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda-3$lambda-2(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->prepareCreateWalletFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->viewState:Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public getLinkedCryptoWalletAddress()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->linkedCryptoWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isRestoreAvailable()Z
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public loadCryptoInformation(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 5

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 106
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress()Lio/reactivex/Observable;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->viewState:Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public setLinkedCryptoWalletAddress(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->linkedCryptoWalletAddress:Ljava/lang/String;

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance p1, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V

    invoke-virtual {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->loadCryptoInformation(Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 4

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->isRestoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getWarningDialogModelByType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 56
    :cond_0
    new-instance v3, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showAlreadyCreatedWalletWarningDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getAnimatedSpannableDialogModelByType(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    move-result-object v1

    new-instance v2, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {v0, v1, v2}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    :goto_0
    return-void
.end method
