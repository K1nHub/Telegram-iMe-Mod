.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;
.super Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;
.source "WalletHomeCryptoFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoFragment.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,346:1\n13#2,4:347\n56#3,6:351\n341#4:357\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoFragment.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment\n*L\n61#1:347,4\n62#1:351,6\n82#1:357\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;


# instance fields
.field private final balancesRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final mediaEditManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$-7l9V-YMLFIjt5Dm_b91AgGkrVs(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->showSelectTokensOrderTypeDialog$lambda$6(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FsGes274Fh2C_xPqWDw1FMCXmo(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView$lambda$19$lambda$18$lambda$17(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6XFyF9tPUpTMRIyvXFZKzJXOqXk(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->showAddressMismatchScreen$lambda$3(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQXiu37IveZqLRJTUtmZMDOK_dY(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupSwipeRefresh$lambda$20(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RW5ZmlRuQXknsOkfbI4QV7rf67M(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$11(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBr0L3WSvftlv-BtpHNTFGXh9TM(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->showChooseNetworkDialog$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZjZIMCl--OsTrwAJFwGWeykoiLo(Landroidx/recyclerview/widget/GridLayoutManager;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView$lambda$19$lambda$18$lambda$16(Landroidx/recyclerview/widget/GridLayoutManager;II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aHKhm5o_-dqnT2tj2TxooGMOG6E(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$14(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qa_-7p3FjS99XyJ659vT02-oigc(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$13(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEko4QGFj4FlkeESeHvwAyWKXLs(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$typxccPy3Jz0XX5LfofFoCNlqPQ(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$12(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xnvHCW5j4LQLgRV7joSLCq1HtFs(Lcom/iMe/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->showChangeNetworkHint$lambda$9$lambda$8(Lcom/iMe/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 61
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 65
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "mediaEditManager"

    const-string v4, "getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

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

    .line 61
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 65
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 66
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->mediaEditManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getCurrentAccount$p$s-561464087(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    return-object v0
.end method

.method private final getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->mediaEditManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/common/MediaEditManager;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final openNftDetails(Landroid/view/View;)V
    .locals 4

    .line 291
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->getInstanceForNft(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$openNftDetails$1;

    invoke-direct {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$openNftDetails$1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 232
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 233
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 234
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BannerProvider;->setBannerOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 249
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getCryptoAccountProvider()Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->setOnMenuItemClickAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 254
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 257
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 272
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$11(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/SlideItem;

    .line 243
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    .line 245
    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v5

    const/16 v1, 0x6c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 243
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    .line 242
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$12(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showWalletAddressScan()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$13(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 259
    instance-of v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;

    if-eqz v0, :cond_0

    .line 260
    sget-object p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;

    new-instance p3, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    check-cast p0, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-direct {p3, p0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;-><init>(Lcom/iMe/model/wallet/home/AccountItem$Token;)V

    invoke-virtual {p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 262
    :cond_0
    instance-of v0, p0, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->openTokenSettingsScreen()V

    goto :goto_0

    .line 263
    :cond_1
    instance-of v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz v0, :cond_2

    .line 264
    instance-of p0, p2, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    if-eqz p0, :cond_3

    .line 265
    move-object v0, p2

    check-cast v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v1, p4

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    goto :goto_0

    .line 269
    :cond_2
    instance-of p0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz p0, :cond_3

    invoke-direct {p1, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->openNftDetails(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$14(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 274
    sget p2, Lorg/telegram/messenger/R$id;->network_type_view:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog()V

    goto :goto_0

    .line 275
    :cond_0
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->switchHiddenBalance()V

    goto :goto_0

    .line 276
    :cond_1
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->openTokenSettingsScreen()V

    goto :goto_0

    .line 277
    :cond_2
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->onSelectTokensOrderTypeClicked()V

    goto :goto_0

    .line 278
    :cond_3
    sget p2, Lorg/telegram/messenger/R$id;->image_copy:I

    if-ne p1, p2, :cond_4

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 280
    instance-of p1, p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    if-eqz p1, :cond_4

    .line 281
    check-cast p0, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final setupSwipeRefresh()V
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupSwipeRefresh$lambda$20(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V

    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 4

    .line 315
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 316
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 317
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getNftTokenProvider()Lcom/iMe/ui/adapter/provider/NftTokenProvider;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->setSpanCount(I)V

    .line 319
    new-instance v2, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 320
    sget-object v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setGridSpanSizeLookup(Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;)V

    .line 321
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->setOnNetworkViewLayoutAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 317
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string/jumbo v1, "setupWalletRecycleView$lambda$19"

    .line 323
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final setupWalletRecycleView$lambda$19$lambda$18$lambda$16(Landroidx/recyclerview/widget/GridLayoutManager;II)I
    .locals 0

    const-string p1, "<anonymous parameter 0>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final setupWalletRecycleView$lambda$19$lambda$18$lambda$17(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showChangeNetworkHintIfNeeded()V

    return-void
.end method

.method private static final showAddressMismatchScreen$lambda$3(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->Companion:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final showChangeNetworkHint$lambda$9$lambda$8(Lcom/iMe/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/iMe/utils/hints/HintUtils;->hideHint()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final showChooseNetworkDialog$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedNetworkType"

    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showSelectTokensOrderTypeDialog$lambda$6(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

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

    .line 80
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 79
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    .line 84
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    .line 80
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 79
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public loadBalances()V
    .locals 7

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V

    return-void
.end method

.method public loadTabInfo()V
    .locals 7

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x190

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupColors()V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners()V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView()V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupSwipeRefresh()V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/manager/common/MediaEditManager;->finishLoading()V

    .line 224
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->pauseAnimation()V

    .line 219
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->resumeAnimation()V

    return-void
.end method

.method public openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 1

    const-string v0, "linkedWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    invoke-virtual {v0, p2, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/lang/String;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openHistoryScreen()V
    .locals 4

    .line 194
    sget-object v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSendScreen(Ljava/lang/String;)V
    .locals 9

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForWalletTransfer(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openTokenSettingsScreen(Ljava/lang/String;)V
    .locals 1

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object p1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    sget-object v0, Lcom/iMe/model/wallet/crypto/TokensScreenType$Crypto;->INSTANCE:Lcom/iMe/model/wallet/crypto/TokensScreenType$Crypto;

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/TokensScreenType;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderNodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAddressMismatchScreen()V
    .locals 3

    .line 122
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;->resetOnNetworkViewLayoutAction()V

    .line 203
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 205
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/utils/hints/HintUtils;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "parentActivity"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;

    invoke-direct {v5, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance$default(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Landroid/app/Activity;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 180
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v2, p2, v0, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public synthetic showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView$-CC;->$default$showSelectOptionsDialog(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showSelectTokensOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 2

    const-string/jumbo v0, "tokensOrderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-static {p0, v0, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectTokensOrderTypeDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWalletAddressScan(Ljava/lang/String;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getAddressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method