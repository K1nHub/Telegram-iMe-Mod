.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "FragmentUsernamesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentUsernamesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentUsernamesFragment.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,235:1\n13#2,4:236\n56#3,6:240\n*S KotlinDebug\n*F\n+ 1 FragmentUsernamesFragment.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment\n*L\n38#1:236,4\n41#1:240,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final productsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4wuuG1nbaCya9cxOr14DSAK_5x8(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupListeners$lambda$10$lambda$9(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6VZhvLTVEiTVPBJ29CY7VNG-cm4(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->showConfirmationDialog$lambda$0(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7Y3N388s_OBZVHTDq3prw3WkPY(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupListeners$lambda$13$lambda$12(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MTV9G5cNx4ygyQut-Rcr3BHf9Qo(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->showChooseSortingTypeDialog$lambda$2(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QD4btVLlz5j5k3k5A7GmSMnRnQQ(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->showActionSuccess$lambda$1(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RtXT4A8CqOaUS0SuNA4MJvMtxuw(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getThemeDescriptions$lambda$4(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCf0s1dEfimaYAcCpS5ua_c-d4E(Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupListeners$lambda$13$lambda$11(Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWfjaqKwyrl50j-qXSTalret1f0(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->showProductDetailsDialog$lambda$3(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 43
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->Companion:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 38
    iput-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->productsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    return-object v0
.end method

.method private final getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->productsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$4(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupColors()V

    .line 146
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final newInstance()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->Companion:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 5

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 154
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 155
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 157
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 164
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 165
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 168
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    .line 167
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    .line 180
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v1, -0x80000000

    .line 181
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 183
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_search_hint:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 184
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 190
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 191
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 192
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 200
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 206
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$10$lambda$9(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts(Z)V

    return-void
.end method

.method private static final setupListeners$lambda$13$lambda$11(Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 203
    instance-of p2, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onProductItemClick(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$13$lambda$12(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 208
    sget p2, Lorg/telegram/messenger/R$id;->image_order:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onSelectSortingTypeClick()V

    :cond_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 5

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->recyclerProducts:Landroidx/recyclerview/widget/RecyclerView;

    .line 216
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 218
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setWhiteBackground(Z)V

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$dimen;->wallet_card_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setCustomElevation(F)V

    .line 220
    new-instance v3, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupRecycleView$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupRecycleView$1$1$1$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 222
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/adapter/diff/TonFragmentProductsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/fragment/usernames/adapter/diff/TonFragmentProductsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 216
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 224
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private static final showActionSuccess$lambda$1(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts$default(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final showChooseSortingTypeDialog$lambda$2(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onSortingTypeSelected(I)V

    return-void
.end method

.method private static final showConfirmationDialog$lambda$0(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->buyUsername()V

    return-void
.end method

.method private static final showProductDetailsDialog$lambda$3(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onBuyClick()V

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

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 121
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 123
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 124
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 121
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 126
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 127
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 128
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 129
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 126
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 131
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 132
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 133
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 134
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 131
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 136
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 137
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 138
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 139
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 136
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 141
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v2

    .line 143
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 120
    new-instance v4, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    .line 148
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 141
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 120
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

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupActionBar()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupRecycleView()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupColors()V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupListeners()V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/usernames/adapter/TonFragmentProductsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 82
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showActionSuccess()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_create_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_buy_success_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showChooseSortingTypeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v7, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v3, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showProductDetailsDialog(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V
    .locals 2

    const-string v0, "productItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
