.class public final Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
.super Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;
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
    value = "SMAP\nCreateWalletTutorialFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletTutorialFragment.kt\ncom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 6 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,211:1\n13#2,4:212\n56#3,6:216\n262#4,2:222\n16#5,3:224\n42#6,12:227\n*S KotlinDebug\n*F\n+ 1 CreateWalletTutorialFragment.kt\ncom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment\n*L\n41#1:212,4\n44#1:216,6\n94#1:222,2\n192#1:224,3\n193#1:227,12\n*E\n"
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

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;"

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

    const-string/jumbo v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    .line 41
    new-instance p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
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

    .line 44
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialAdapter$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 48
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTutorialAdapter(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTutorialType$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    return-object p0
.end method

.method public static final synthetic access$handleBackPressed(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->handleBackPressed()V

    return-void
.end method

.method public static final synthetic access$setSwipeBackEnabled$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return-void
.end method

.method public static final synthetic access$updatePageButton(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->updatePageButton(Z)V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
    .locals 3

    .line 41
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

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupColors()V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    return-object v0
.end method

.method private final handleBackPressed()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 123
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_title:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_negative_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->wallet_backup_quit_alert_positive_button:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 131
    invoke-static {v0}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    goto :goto_0

    .line 134
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

    const-string/jumbo v2, "setupActionBar$lambda$1"

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
    .locals 4

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 178
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 179
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 180
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 182
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 183
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    .line 184
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->setSelectedDotColor(I)V

    .line 185
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setDotsColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;

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

    const-string/jumbo v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v0

    .line 170
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupViewPager()V
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v0

    .line 140
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->viewPagerTutorial:Lcom/iMe/ui/custom/WrapContentViewPager;

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/WrapContentViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const-string/jumbo v2, "setupViewPager$lambda$4$lambda$3"

    .line 142
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->applyDefaultProperties(Landroidx/viewpager/widget/ViewPager;)V

    .line 143
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 144
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private final updatePageButton(Z)V
    .locals 7

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v0

    .line 156
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    const-string/jumbo v2, "updatePageButton$lambda$6$lambda$5"

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;->getLastPageButtonTextResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$updatePageButton$1$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$updatePageButton$1$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-interface {p1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$updatePageButton$1$1$2;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$updatePageButton$1$1$2;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 84
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 83
    new-instance v7, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    .line 87
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    .line 84
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 53
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->swipeBackEnabled:Z

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->handleBackPressed()V

    const/4 v0, 0x0

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onBecomeFullyVisible()V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

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

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupActionBar()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupColors()V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupViewPager()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupListeners()V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupTexts()V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;)V
    .locals 1

    const-string/jumbo v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;->getOnTutorialPassedFragmentCreator()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showTutorialPages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getTutorialAdapter()Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;->setItems(Ljava/util/List;)V

    .line 92
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result p1

    .line 93
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->updatePageButton(Z)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;->dotsIndicatorTutorial:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    const-string v1, "binding.dotsIndicatorTutorial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
