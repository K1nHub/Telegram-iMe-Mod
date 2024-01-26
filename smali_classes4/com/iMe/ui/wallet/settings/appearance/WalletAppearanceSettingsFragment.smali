.class public final Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletAppearanceSettingsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAppearanceSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAppearanceSettingsFragment.kt\ncom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,130:1\n13#2,4:131\n56#3,6:135\n*S KotlinDebug\n*F\n+ 1 WalletAppearanceSettingsFragment.kt\ncom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment\n*L\n24#1:131,4\n27#1:135,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;


# instance fields
.field private final appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$3OMituWMI_Sv8Ax_tVUNDIu5RDE(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupListeners$lambda$3(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 24
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 29
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 24
    iput-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 29
    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 95
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_settings_interface:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$3(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->resolveItemClick(Lcom/iMe/model/wallet/settings/InterfaceSettingItem;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 53
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 55
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 56
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 57
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 54
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 60
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 61
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 62
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 59
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 64
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 65
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 66
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 67
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 64
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 71
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    .line 72
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    .line 69
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 75
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 76
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    .line 77
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    .line 74
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 80
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 81
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v3, v4

    .line 82
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 84
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 86
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;)V

    .line 88
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 84
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupActionBar()V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupColors()V

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupListeners()V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupRecycleView()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openNetworksSettingsScreen()V
    .locals 1

    .line 49
    sget-object v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setupSettingsItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/InterfaceSettingItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
