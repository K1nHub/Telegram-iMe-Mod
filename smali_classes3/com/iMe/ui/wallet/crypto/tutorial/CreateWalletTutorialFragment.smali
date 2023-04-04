.class public final Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "CreateWalletTutorialFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletTutorialFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletTutorialFragment.kt\ncom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 5 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,205:1\n13#2,4:206\n56#3,6:210\n16#4,3:216\n39#5,8:219\n*S KotlinDebug\n*F\n+ 1 CreateWalletTutorialFragment.kt\ncom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment\n*L\n36#1:206,4\n39#1:210,6\n182#1:216,3\n183#1:219,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private swipeBackEnabled:Z

.field private final tutorialAdapter$delegate:Lkotlin/Lazy;

.field private final tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;


# direct methods
.method public static synthetic $r8$lambda$JHAj7UKz78nbM5UixsVrhfBVo6w(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_NQCvHZna8wykI1E_afB7c7E9s(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getThemeDescriptions$lambda$2(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 42
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)V
    .locals 4

    const-string v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    .line 36
    new-instance p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 36
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialAdapter$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 43
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTutorialAdapter(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTutorialType$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    return-object p0
.end method

.method public static final synthetic access$handleBackPressed(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->handleBackPressed()V

    return-void
.end method

.method public static final synthetic access$setSwipeBackEnabled$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object p0

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->setSelectedDotColor(I)V

    .line 88
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    const-string v0, "windowBackgroundWhiteGrayText2"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setDotsColor(I)V

    return-void
.end method

.method private final getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    return-object v0
.end method

.method private final handleBackPressed()V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 124
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_title:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_negative_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_positive_button:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v3, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 121
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 132
    invoke-static {v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    const-string v2, "setupActionBar$lambda$3"

    .line 104
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ActionBarExtKt;->applyColorsWithWhiteBackground(Lorg/telegram/ui/ActionBar/ActionBar;)V

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 106
    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 108
    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 172
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->setSelectedDotColor(I)V

    .line 173
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setDotsColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 178
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v0

    .line 179
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    const-string v2, "buttonAction"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$1$1;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$1$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

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

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 164
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v0

    .line 165
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupViewPager()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->viewPagerTutorial:Lcom/iMe/ui/custom/WrapContentViewPager;

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/WrapContentViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const-string v1, "setupViewPager$lambda$5"

    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->applyDefaultProperties(Landroidx/viewpager/widget/ViewPager;)V

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {v1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 144
    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 80
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 81
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 82
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarWhiteSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 83
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 79
    new-instance v10, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const-string v11, "windowBackgroundWhite"

    move-object v4, v2

    .line 83
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 79
    new-instance v10, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v11, "chats_actionBackground"

    move-object v4, v2

    .line 84
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 79
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->handleBackPressed()V

    const/4 v0, 0x0

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onBecomeFullyVisible()V

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupActionBar()V

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupColors()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupViewPager()V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupListeners()V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupTexts()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openPasscodeScreen()V
    .locals 1

    const-string v0, ""

    .line 65
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPasscode(Ljava/lang/String;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V
    .locals 1

    const-string v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;->getOnTutorialPassedFragmentCreator()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showTutorialPages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateEthWalletTutorialAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method
