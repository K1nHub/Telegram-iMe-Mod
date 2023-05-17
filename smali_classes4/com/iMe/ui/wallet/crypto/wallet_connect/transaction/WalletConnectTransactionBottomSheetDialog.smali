.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "WalletConnectTransactionBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectTransactionBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectTransactionBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,162:1\n13#2,4:163\n56#3,6:167\n56#3,6:173\n*S KotlinDebug\n*F\n+ 1 WalletConnectTransactionBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog\n*L\n31#1:163,4\n34#1:167,6\n35#1:173,6\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final screenType:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

.field private final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$xAa5cN_SxS3oPn0oMhjtuBDiKv4(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->showTransactionConfirmationDialog$lambda$9(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 38
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->screenType:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 31
    new-instance p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    invoke-static {p0, v2, p1, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->screenType:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

    return-object p0
.end method

.method public static final synthetic access$rejectTransaction(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->rejectTransaction()V

    return-void
.end method

.method public static final synthetic access$showTransactionConfirmationDialog(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->showTransactionConfirmationDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final rejectTransaction()V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->rejectTransaction()V

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupColors()V
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 96
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 97
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string/jumbo v2, "setupColors$lambda$5$lambda$2"

    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 100
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "setupColors$lambda$5$lambda$3"

    .line 102
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 104
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v1, "setupColors$lambda$5$lambda$4"

    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    .line 124
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonProcess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 125
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "buttonClose"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    .line 113
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->screenType:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->getButtonTextResId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 117
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    return-void
.end method

.method private final showTransactionConfirmationDialog()V
    .locals 6

    .line 132
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->getSendConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showTransactionConfirmationDialog$lambda$9(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string v0, "fragment.parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    move-result-object p0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->startAction$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->rejectTransaction()V

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->setupColors()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->setupListeners()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->setupViews()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onTransactionSuccess()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_success:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showToast(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "transactionAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    .line 63
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textNetwork:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_network:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 64
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_from:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p3, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 65
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTo:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_to:I

    invoke-interface {p3, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p4, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 66
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_dapp:I

    invoke-interface {p3, p4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p5, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 67
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showFee(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V
    .locals 4

    const-string v0, "feeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    const-string/jumbo v1, "showFee$lambda$1"

    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method
