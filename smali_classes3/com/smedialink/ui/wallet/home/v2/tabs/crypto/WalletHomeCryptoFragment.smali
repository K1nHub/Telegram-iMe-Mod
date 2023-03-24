.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;
.super Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;
.source "WalletHomeCryptoFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoFragment.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,362:1\n13#2,4:363\n56#3,6:367\n341#4:373\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoFragment.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment\n*L\n62#1:363,4\n63#1:367,6\n83#1:373\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;


# instance fields
.field private final balancesRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final mediaEditManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$0PTW1pzpxDzgTUhAL1Enm5qP75g(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$14$lambda$13(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9p3fK0ZUZQ9-JZaM8ZnjxlMUnGc(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->showAddressMismatchScreen$lambda$3(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cd61Q-r-vo9K_WgTcAr-b94VWXc(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$10(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYvExshZ0TXsGIAqRvJXBve69VY(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$14(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKV-Y4LGjWv7MyBm2M7wJ-FqxDM(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->showAnimatedDialog$lambda$1(Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGPu48XVVNp4ite__uKJy7la_yM(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->showChooseNetworkDialog$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XmXGc7waZ_S19VuNM1XQF5wAUAw(Landroidx/recyclerview/widget/GridLayoutManager;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView$lambda$19$lambda$18$lambda$16(Landroidx/recyclerview/widget/GridLayoutManager;II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_pMm6W3y-8PzViyuQ_pH11_nbvg(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupSwipeRefresh$lambda$20(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d57-E-asQabjAnprMq3dU3Qjrp0(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView$lambda$19$lambda$18$lambda$17(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCo1ShW5r6Oi3qShp3K5hgTpDTc(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$12(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n37qRW0maMzd_nQSSaFdCD-Y-Es(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getThemeDescriptions$lambda$0(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5bmhtWQLcaQlQ1ouF7iG8Njtho(Lcom/smedialink/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->showChangeNetworkHint$lambda$8$lambda$7(Lcom/smedialink/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y94umrEoUsxaB51E7JyBNh41JzA(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners$lambda$15$lambda$11(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 62
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 67
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "mediaEditManager"

    const-string v4, "getMediaEditManager()Lcom/smedialink/manager/common/MediaEditManager;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

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

    .line 62
    iput-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 67
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->mediaEditManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getCurrentAccount$p$s-561464087(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    return-object v0
.end method

.method private final getMediaEditManager()Lcom/smedialink/manager/common/MediaEditManager;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->mediaEditManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/manager/common/MediaEditManager;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final onSubItemClick(I)V
    .locals 1

    .line 331
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->SCAN_ADDRESS:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->showWalletAddressScan()V

    :cond_0
    return-void
.end method

.method private final openNftDetails(Landroid/view/View;)V
    .locals 4

    .line 306
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getMediaEditManager()Lcom/smedialink/manager/common/MediaEditManager;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->getInstanceForNft(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$openNftDetails$1;

    invoke-direct {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$openNftDetails$1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 250
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    .line 251
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    const-string v1, "windowBackgroundGray"

    .line 252
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 257
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getCryptoAccountProvider()Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda11;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;->setActionBarMenuItemDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 259
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/smedialink/ui/adapter/provider/BannerProvider;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->setBannerOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 263
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 279
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$10(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->onSubItemClick(I)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$11(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/smedialink/ui/adapter/provider/BannerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/home/SlideItem;

    .line 261
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/SlideItem;->getSlide()Lcom/smedialink/model/wallet/home/BannerSlide;

    move-result-object v5

    const/16 v1, 0x6c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/home/BannerSlide;Lorg/fork/enums/LockedSection;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$12(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 265
    instance-of v1, v0, Lcom/smedialink/model/wallet/home/AccountItem$Token;

    if-eqz v1, :cond_0

    .line 266
    sget-object p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    new-instance p2, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    check-cast v0, Lcom/smedialink/model/wallet/home/AccountItem$Token;

    invoke-direct {p2, v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;-><init>(Lcom/smedialink/model/wallet/home/AccountItem$Token;)V

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 267
    :cond_0
    instance-of v1, v0, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    if-eqz v1, :cond_1

    .line 268
    sget-object p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    .line 269
    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 268
    invoke-virtual {p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 271
    :cond_1
    instance-of v1, v0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    if-eqz v1, :cond_2

    .line 272
    instance-of p0, p1, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    if-eqz p0, :cond_3

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v1, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    goto :goto_0

    .line 276
    :cond_2
    instance-of p1, v0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->openNftDetails(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$14(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 281
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->switchHiddenBalance()V

    goto :goto_0

    .line 282
    :cond_0
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    if-ne p1, p2, :cond_1

    .line 283
    sget-object p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    .line 284
    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 283
    invoke-virtual {p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 286
    :cond_1
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    if-ne p1, p2, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 289
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getSelectedTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object p2

    .line 287
    new-instance p3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSelectTokensOrderTypeDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 292
    :cond_2
    sget p2, Lorg/telegram/messenger/R$id;->frame_network_type:I

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog()V

    goto :goto_0

    .line 293
    :cond_3
    sget p2, Lorg/telegram/messenger/R$id;->image_copy:I

    if-ne p1, p2, :cond_4

    .line 294
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 295
    instance-of p1, p0, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    if-eqz p1, :cond_4

    .line 296
    check-cast p0, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$14$lambda$13(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->setTokensOrderType(Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method private final setupSwipeRefresh()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupSwipeRefresh$lambda$20(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 4

    .line 336
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 338
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getNftTokenProvider()Lcom/smedialink/ui/adapter/provider/NftTokenProvider;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smedialink/ui/adapter/provider/NftTokenProvider;->setSpanCount(I)V

    .line 340
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;

    invoke-direct {v2}, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 341
    sget-object v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setGridSpanSizeLookup(Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;)V

    .line 342
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->setOnNetworkViewLayoutAction(Lorg/fork/utils/Callbacks$Callback;)V

    .line 338
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v1, "setupWalletRecycleView$lambda$19"

    .line 344
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final setupWalletRecycleView$lambda$19$lambda$18$lambda$16(Landroidx/recyclerview/widget/GridLayoutManager;II)I
    .locals 0

    const-string p1, "<anonymous parameter 0>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final setupWalletRecycleView$lambda$19$lambda$18$lambda$17(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->showChangeNetworkHintIfNeeded()V

    return-void
.end method

.method private static final showAddressMismatchScreen$lambda$3(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final showAnimatedDialog$lambda$1(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static final showChangeNetworkHint$lambda$8$lambda$7(Lcom/smedialink/utils/hints/HintUtils;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/smedialink/utils/hints/HintUtils;->hideHint()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final showChooseNetworkDialog$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedNetworkType"

    .line 176
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 81
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 80
    new-instance v7, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda12;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundGray"

    move-object v1, v9

    .line 81
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 80
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
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
    .locals 6

    .line 162
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    return-void
.end method

.method public loadTabInfo()V
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZJ)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupColors()V

    .line 73
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupListeners()V

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupWalletRecycleView()V

    .line 75
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->setupSwipeRefresh()V

    .line 77
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getMediaEditManager()Lcom/smedialink/manager/common/MediaEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/manager/common/MediaEditManager;->finishLoading()V

    .line 242
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 237
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/smedialink/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->pauseAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 232
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->getBannerProvider()Lcom/smedialink/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->resumeAnimation()V

    return-void
.end method

.method public openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 132
    new-instance v1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;

    .line 131
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$openCreateWalletScreen$1;

    invoke-direct {v2, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$openCreateWalletScreen$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 132
    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    goto :goto_1

    .line 142
    :cond_1
    sget-object p1, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, p2}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance$default(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 129
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openHistoryScreen()V
    .locals 4

    .line 216
    sget-object v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    sget-object v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 120
    new-instance v1, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {v1, p2, p1}, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSendScreen()V
    .locals 9

    .line 212
    new-instance v8, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForWalletTransfer(Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

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

    .line 89
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAddressMismatchScreen()V
    .locals 3

    .line 152
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showAlreadyCreatedWalletWarningDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 9

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v0, "parentActivity"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    .line 107
    new-instance v3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showAlreadyCreatedWalletWarningDialog$1$1;

    invoke-direct {v3, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showAlreadyCreatedWalletWarningDialog$1$1;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeClickableDescription$default(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 106
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda10;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-static {p0, p1, v0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBalancesRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;->resetOnNetworkViewLayoutAction()V

    .line 221
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/smedialink/utils/hints/HintUtils;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 223
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->recycleWalletHomeCryptoDashboard:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/utils/hints/HintUtils;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v4, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog$default(Landroid/content/Context;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showQrReceiveDialog(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 9

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 192
    invoke-static {p1, p2}, Lcom/smedialink/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v8, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;

    invoke-direct {v8, p1, p0, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;-><init>(Ljava/lang/String;Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Landroid/app/Activity;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object v2, v8

    move-object v5, p1

    move-object v7, p2

    .line 200
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 188
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;->getRoot()Lcom/smedialink/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$DefaultImpls;->showSelectOptionsDialog(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showWalletAddressScan(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanAddressUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
