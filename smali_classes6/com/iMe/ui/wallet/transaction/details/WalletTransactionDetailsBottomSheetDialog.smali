.class public final Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "WalletTransactionDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n13#2,4:343\n56#3,6:347\n56#3,6:353\n56#3,6:359\n262#4,2:365\n262#4,2:367\n262#4,2:369\n262#4,2:371\n1#5:373\n*S KotlinDebug\n*F\n+ 1 WalletTransactionDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog\n*L\n59#1:343,4\n62#1:347,6\n63#1:353,6\n64#1:359,6\n126#1:365,2\n127#1:367,2\n128#1:369,2\n136#1:371,2\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;


# instance fields
.field private final actionAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;

.field private final parentAdditionalAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

.field private final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4jjzpjNrrmseg3NPBJ8cHO8xIYg(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupActionItem$lambda$13$lambda$12(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A0fjfPf1WjFrqJCMoi39Y7615t4(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->showConfirmCancelDialog$lambda$6(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD6FkwaBBA193cbRkxqL_vNtetI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupActionItem$lambda$13$lambda$11(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IT8eRHGmUv52bBfP2tKx4vlju6g(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->showConfirmBoostDialog$lambda$8(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OiXYT-MbbAzPL3WEMOi9gqhdeZE(Ljava/util/List;Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupTransactionActions$lambda$4$lambda$3(Ljava/util/List;Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j91i_1TtjUGAR74ertFfIXx77yo(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->onSuccessBoostTransaction$lambda$10(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5GYwvkbJrzrpsf5rBwgRylpkj4(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->onSuccessCancelTransaction$lambda$9(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 59
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 68
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 53
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 54
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 55
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->parentAdditionalAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 59
    new-instance p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string v0, "mvpDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "presenter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 59
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->actionAdapter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$2;

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$3;

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    return-object p0
.end method

.method private final getActionAdapter()Lcom/iMe/ui/wallet/transaction/details/adapter/WalletActionAdapter;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->actionAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/adapter/WalletActionAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    return-object v0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;)",
            "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final onSubItemClick(I)V
    .locals 1

    .line 234
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SHARE:I

    if-ne p1, v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->shareTransaction()V

    :cond_0
    return-void
.end method

.method private static final onSuccessBoostTransaction$lambda$10(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final onSuccessCancelTransaction$lambda$9(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupActionItem()V
    .locals 5

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 217
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 218
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v1, "setupActionItem$lambda$13"

    .line 219
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 221
    sget v1, Lcom/iMe/common/IdFabric$Menu;->SHARE:I

    .line 222
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    .line 223
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_share:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 225
    new-instance v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 228
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupActionItem$lambda$13$lambda$11(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupActionItem$lambda$13$lambda$12(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->onSubItemClick(I)V

    return-void
.end method

.method private final setupColors()V
    .locals 12

    .line 241
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 243
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 244
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 242
    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->constraintRoot:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 247
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->cardViewTransactionInfo:Landroidx/cardview/widget/CardView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 248
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->linearActions:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 249
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->constraintBottomAction:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 250
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 251
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textTransactionType:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->imageStakingIcon:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 254
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getNetworkIconCornerSize()F

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 253
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v2, 0x6

    new-array v4, v2, [Landroid/widget/TextView;

    .line 260
    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v6, "textFeeTitle"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textProcessingTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v7, "textProcessingTitle"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textDateTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textDateTitle"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 261
    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textRecipientTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v9, "textRecipientTitle"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x3

    aput-object v5, v4, v9

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textStatusTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "textStatusTitle"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    aput-object v5, v4, v10

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textCommentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v11, "textCommentTitle"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v5, v4, v11

    .line 258
    invoke-static {v1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 264
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    new-array v2, v2, [Landroid/widget/TextView;

    .line 265
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textFeeValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v6

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textProcessingValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textProcessingValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v7

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textDateValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textDateValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v8

    .line 266
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textRecipientValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textRecipientValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v9

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textStatusValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textStatusValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v10

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textCommentValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textCommentValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v11

    .line 263
    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 269
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textSectionName:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupColors$lambda$19$lambda$15"

    .line 270
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 271
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textSectionActions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "setupColors$lambda$19$lambda$16"

    .line 275
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 276
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupColors$lambda$19$lambda$17"

    .line 280
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 281
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setupColors$lambda$19$lambda$18"

    .line 285
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground(Landroid/view/View;Z)V

    .line 286
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 287
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    .line 323
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v0, "textActionCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->recycleActions:Landroidx/recyclerview/widget/RecyclerView;

    .line 294
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getActionAdapter()Lcom/iMe/ui/wallet/transaction/details/adapter/WalletActionAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 295
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 4

    .line 300
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    .line 301
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textSectionName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_section_info:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textSectionActions:Landroidx/appcompat/widget/AppCompatTextView;

    .line 305
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_section_actions:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 307
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_fee_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textProcessingTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_processing_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textDateTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_date_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textRecipientTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_recipient_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textStatusTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_status_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textCommentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 317
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_comment_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupTransactionActions$lambda$4$lambda$3(Ljava/util/List;Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$actionsListeners"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actionItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 1>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 141
    iget-object p0, p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->parentAdditionalAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    if-eqz p0, :cond_0

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final showConfirmBoostDialog$lambda$8(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showConfirmCancelDialog$lambda$6(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 147
    invoke-static {p1, v0, v1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupColors()V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupListeners()V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupActionItem()V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupTexts()V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->setupRecycleView()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onSuccessBoostTransaction(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 203
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_success_dialog_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_success_dialog_description:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    new-instance v6, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onSuccessCancelTransaction(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_success_dialog_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_success_dialog_description:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    new-instance v6, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public openProfileScreen(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 165
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 166
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 167
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 12

    move-object v0, p2

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    const-string v9, "category"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "amount"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "recipientTitle"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "recipient"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "status"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "date"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "processing"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "fee"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v9

    .line 100
    iget-object v10, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    move v11, p1

    invoke-virtual {v10, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 101
    iget-object v10, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textTransactionType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v10, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textRecipientTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textRecipientValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textStatusValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textDateValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textProcessingValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    .line 110
    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 111
    iget-object v2, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textCommentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textCommentTitle"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 112
    iget-object v2, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->dividerComment:Lcom/iMe/ui/custom/DividerView;

    const-string v5, "dividerComment"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 113
    iget-object v2, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textCommentValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "setupScreenWithData$lambda$2$lambda$0"

    .line 114
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 115
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p13, :cond_3

    .line 120
    iget-object v2, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->imageStakingIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v4, "setupScreenWithData$lambda$2$lambda$1"

    .line 121
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object p1, v2

    move-object/from16 p2, p13

    move-object p3, v0

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    .line 122
    invoke-static/range {p1 .. p6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 126
    :cond_3
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textFeeTitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eqz p11, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 262
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v3, "textFeeValue"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p11, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    .line 262
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, v9, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v3, "itemMoreOptions"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p12, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    .line 262
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupTransactionActions(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actionItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionsListeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;->linearActions:Landroid/widget/LinearLayout;

    const-string v1, "binding.linearActions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->getActionAdapter()Lcom/iMe/ui/wallet/transaction/details/adapter/WalletActionAdapter;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 139
    new-instance v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method public shareTransactionInfo(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "transactionInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showConfirmBoostDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "fragment.parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmCancelDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "fragment.parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 182
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method
