.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletNetworksSettingsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNetworksSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNetworksSettingsFragment.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,153:1\n13#2,4:154\n56#3,6:158\n*S KotlinDebug\n*F\n+ 1 WalletNetworksSettingsFragment.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment\n*L\n33#1:154,4\n36#1:158,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final networkRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$P-_PvqetdB4hkid02D4WtX63idc(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupListeners$lambda$6(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

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

    .line 33
    iput-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->networkRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 38
    new-instance v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    return-object v0
.end method

.method private final getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->networkRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 6

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 80
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->networks_settings_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v3, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 90
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 91
    sget v3, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 94
    new-instance v3, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V

    .line 93
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    new-array v2, v2, [Landroid/text/InputFilter$LengthFilter;

    .line 107
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v1

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v1, -0x80000000

    .line 109
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 111
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_search_hint:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 112
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 129
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 130
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 131
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 133
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 132
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 137
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 138
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 139
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchCursorColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$6(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getPresenter()Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->onItemClick(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/diff/NetworksSettingsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 119
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 69
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v2

    .line 71
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;)V

    .line 73
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 69
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 54
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

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

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupActionBar()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupListeners()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupRecycleView()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderEmptySearchResults()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v0

    sget-object v1, Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->isContentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNetworksSettingsBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showContent()V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->getNetworkRecycleAdapter()Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
