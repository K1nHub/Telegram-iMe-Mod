.class public final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "CustomTokensFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTokensFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTokensFragment.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,176:1\n13#2,4:177\n56#3,6:181\n*S KotlinDebug\n*F\n+ 1 CustomTokensFragment.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment\n*L\n34#1:177,4\n35#1:181,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final tokensRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9q4-oRj-BBKNUxsxucOdiozpBz4(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T8wc-s3OG6036cywUh-BKUiOSrQ(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupLoadMore$lambda$9$lambda$8$lambda$7(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WOnX2ilK_Ajr10sJ6VHXcaFm9N0(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupColors()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 37
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->Companion:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

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

    .line 34
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->tokensRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    return-object v0
.end method

.method private final getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->tokensRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 7

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 90
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 91
    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_tokens_settings_toolbar_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 93
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    .line 94
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 95
    new-instance v4, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;

    invoke-direct {v4, v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    new-array v3, v3, [Landroid/text/InputFilter$LengthFilter;

    .line 112
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v3, -0x80000000

    .line 113
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 115
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->token_search_hint:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 116
    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    sget v2, Lcom/iMe/common/IdFabric$Menu;->ADD_TOKEN:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 120
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 168
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupListeners$1$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupListeners$1$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 156
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupListeners$1$1$2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupListeners$1$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnEmptyButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 158
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 160
    instance-of p2, p0, Lcom/iMe/model/wallet/crypto/TokenItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->onTokenClicked(Lcom/iMe/model/wallet/crypto/TokenItem;)V

    :cond_0
    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 145
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 146
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAnimationEnable(Z)V

    return-void
.end method

.method private static final setupLoadMore$lambda$9$lambda$8$lambda$7(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->loadCustomTokens(Z)V

    return-void
.end method

.method private final setupRecycleViews()V
    .locals 4

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;->recyclerTokens:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 135
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/diff/CustomTokensDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/diff/CustomTokensDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupLoadMore(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;)V

    .line 133
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

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

    .line 77
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 79
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 83
    new-instance v7, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V

    .line 84
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    .line 77
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 76
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupActionBar()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupRecycleViews()V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupColors()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupListeners()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCustomTokensBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
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

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 55
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public openTokenManagementScreen(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->Companion:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

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

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/adapter/CustomTokensRecycleAdapter;

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
