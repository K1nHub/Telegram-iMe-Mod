.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletSelectTokenFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,221:1\n13#2,4:222\n56#3,6:226\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment\n*L\n41#1:222,4\n46#1:226,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final onTokenSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final onlyPositiveBalance:Z

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

.field private final tokensAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$FoxqUqrOmcUV1yzfdYYsfsEj2ls(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupLoadMore$lambda$9$lambda$8(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQZD3TPd-MtoHst6MtKJ8x3aQF0(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupRecycleView$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 48
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/model/wallet/select/SelectTokenScreenType;ZLcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/String;",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onTokenSelectedAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 36
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->screenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    .line 37
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->onlyPositiveBalance:Z

    .line 38
    iput-object p5, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->onTokenSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 41
    new-instance p3, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string/jumbo p4, "mvpDelegate"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-class p5, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p5, "presenter"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4, p3}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->tokensAdapter$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getOnlyPositiveBalance$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->onlyPositiveBalance:Z

    return p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/iMe/model/wallet/select/SelectTokenScreenType;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->screenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    return-object v0
.end method

.method private final getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->tokensAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;)",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 7

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 139
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 140
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_token_header:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 142
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->screenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    instance-of v2, v2, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 144
    sget v3, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 147
    new-instance v3, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    .line 146
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x0

    .line 159
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v4

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v1, -0x80000000

    .line 160
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 162
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->token_search_hint:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 163
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    new-instance v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$3;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupListeners$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;)V
    .locals 2

    .line 195
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAnimationEnable(Z)V

    return-void
.end method

.method private static final setupLoadMore$lambda$9$lambda$8(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->searchByQuery$default(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->recycleTokens:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/swap/token/adapter/diff/SelectTokenDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 184
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 187
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupLoadMore(Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final setupRecycleView$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->onItemClick(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

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

    .line 62
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 63
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 64
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 65
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 66
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 63
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 70
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 71
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 68
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 73
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 75
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 76
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 73
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object v2

    .line 80
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;)V

    .line 82
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 78
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupActionBar()V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupColors()V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupRecycleView()V

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupListeners()V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onEmptyState()V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    const-string v1, "binding.globalStateLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showEmpty$default(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/model/state/GlobalState$Empty;ILjava/lang/Object;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 121
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onLoadingState()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showProgress()V

    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showNoInternetError()V

    return-void
.end method

.method public onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->onTokenSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {v0, p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showUnexpectedError()V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo p1, "renderItems$lambda$0"

    .line 110
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, v2, p1, v2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showEmpty$default(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/model/state/GlobalState$Empty;ILjava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showContent()V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->getTokensAdapter()Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method
