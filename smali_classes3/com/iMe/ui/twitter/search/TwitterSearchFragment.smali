.class public final Lcom/iMe/ui/twitter/search/TwitterSearchFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "TwitterSearchFragment.kt"

# interfaces
.implements Lcom/iMe/ui/twitter/search/TwitterSearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterSearchFragment.kt\ncom/iMe/ui/twitter/search/TwitterSearchFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,254:1\n13#2,4:255\n56#3,6:259\n56#3,6:265\n*S KotlinDebug\n*F\n+ 1 TwitterSearchFragment.kt\ncom/iMe/ui/twitter/search/TwitterSearchFragment\n*L\n48#1:255,4\n51#1:259,6\n52#1:265,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final onUserSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/model/twitter/TwitterUserItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final twitterUsersRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$02sTNc44F0PkLNEjjdM2WAFt9WU(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmRx0CnijHtGzuR8vyXArtKNKfw(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->showInviteConfirmationDialog$lambda$1(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$UfWRj78fbKQtXz0tE6lighFB_y8(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupListeners$lambda$15$lambda$13(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bSfoDvHKwuSeT7V4s0EoTJPiZL8(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupListeners$lambda$15$lambda$14(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$koNga_ukzwL-1VYtsD6DCQG8kxs(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getThemeDescriptions$lambda$2(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 48
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 55
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->Companion:Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/model/twitter/TwitterUserItem;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserSelectedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->onUserSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 48
    new-instance p2, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$presenter$2;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 48
    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, v1, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->twitterUsersRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$binding$2;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, v1, p1, p2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupColors()V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->twitterUsersRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/twitter/search/TwitterSearchFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/model/twitter/TwitterUserItem;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iMe/ui/twitter/search/TwitterSearchFragment;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->Companion:Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/twitter/search/TwitterSearchFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 6

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 162
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 164
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 166
    sget v3, Lcom/iMe/common/IdFabric$Menu;->SEARCH_TWITTER:I

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 168
    new-instance v3, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupActionBar$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    .line 182
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v1, -0x80000000

    .line 183
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->twitter_search_hint:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 186
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    iput-object v2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 189
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupActionBar$1$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupActionBar$1$3;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 200
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "windowBackgroundWhite"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 230
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->getTwitterInviteProvider()Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->setOnInviteClickAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 234
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$13(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p0

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->onInviteClick(Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$14(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/iMe/ui/twitter/search/TwitterSearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 236
    instance-of p2, p0, Lcom/iMe/model/twitter/TwitterUserItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/twitter/TwitterUserItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->onUserClick(Lcom/iMe/model/twitter/TwitterUserItem;)V

    :cond_0
    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 222
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 223
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAnimationEnable(Z)V

    return-void
.end method

.method private static final setupLoadMore$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->searchByQuery$default(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 4

    .line 206
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;->recycleTweets:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 209
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 210
    new-instance v3, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupRecycleView$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$setupRecycleView$1$1$1$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 212
    new-instance v2, Lcom/iMe/ui/twitter/search/adapter/diff/TwitterSearchDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/twitter/search/adapter/diff/TwitterSearchDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupLoadMore(Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;)V

    .line 207
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final showInviteConfirmationDialog$lambda$1(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->sendInvite(J)V

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

    .line 146
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 147
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 148
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 150
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 145
    new-instance v10, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    .line 150
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 145
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupActionBar()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupListeners()V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupRecycleView()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->setupColors()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const-string p3, "id"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "address"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getPresenter()Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->processSelectedRecipient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_0
    return-void
.end method

.method public onUserSelected(Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V
    .locals 1

    const-string v0, "twitterUserItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->onUserSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {v0, p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public openChatScreen(J)V
    .locals 0

    .line 142
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
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

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getTwitterUsersRecycleAdapter()Lcom/iMe/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, p2, p3, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showInviteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v3, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2, p3}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchFragment;J)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "action"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method
