.class public final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "BuyCryptoProductFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyCryptoProductFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyCryptoProductFragment.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,182:1\n13#2,4:183\n56#3,6:187\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductFragment.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment\n*L\n38#1:183,4\n39#1:187,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buyCryptoProductAdapter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$3MM3YI5tH111pCOYH3zy9BHUfmI(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupListeners$lambda$7(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7np8w4Zq0K7l4SRVNQzbvDeN7Zg(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getThemeDescriptions$lambda$2(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$88mOIDXcndq_FOqRjIaC2aa7T_g(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showSuccessPurchase$lambda$0(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUXDL5iQXKHLGXj2gdVixHOIN0w(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupListeners$lambda$6(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d6BJxPDLUU7Y4GH_id1GbjPn_vI(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showConfirmDialog$lambda$1(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 42
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->Companion:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

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
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->buyCryptoProductAdapter$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveSupportedTokenCode(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->resolveSupportedTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    return-object v0
.end method

.method private final getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->buyCryptoProductAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 114
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final resolveSupportedTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 4

    .line 172
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token_code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments.getString(Bund\u2026okenCode.ETHER.getName())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 131
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 132
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_buy_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 134
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 135
    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 148
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    const-string v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$6(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 158
    instance-of p3, p2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showInformationDialog()V

    goto :goto_1

    .line 159
    :cond_1
    instance-of p3, p2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object p0

    check-cast p2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->prepareConfirmDialog(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final setupListeners$lambda$7(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->recycleCryptoBuy:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final showConfirmDialog$lambda$1(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->purchase(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method private final showInformationDialog()V
    .locals 6

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getInformationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showSuccessPurchase$lambda$0(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

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

    .line 108
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

    .line 109
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

    .line 110
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

    .line 111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 112
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 107
    new-instance v10, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    .line 112
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 107
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
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

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupActionBar()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupColors()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupListeners()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->setupRecycleView()V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openCustomPriceDialog(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 2

    const-string v0, "lowerPriceItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v3, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showErrorPurchase(Ljava/lang/String;)V
    .locals 10

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_unexpected_error_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_error_dialog_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v6, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;

    invoke-direct {v6, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showProcessingUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->Companion:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;->newInstance(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showRefreshLoading(Z)V
    .locals 1

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showRefreshLoading$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;Z)V

    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewAction(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public showSuccessPurchase()V
    .locals 9

    .line 73
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_success_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_success_dialog_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v6, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showUiItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "availablePurchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->getBuyCryptoProductAdapter()Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
