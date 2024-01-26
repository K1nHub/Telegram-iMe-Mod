.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "StakingTransactionFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionFragment.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,425:1\n399#1,8:460\n407#1,7:494\n13#2,4:426\n56#3,6:430\n162#4,8:436\n162#4,8:444\n162#4,8:452\n58#5,23:468\n93#5,3:491\n*S KotlinDebug\n*F\n+ 1 StakingTransactionFragment.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment\n*L\n335#1:460,8\n335#1:494,7\n59#1:426,4\n64#1:430,6\n232#1:436,8\n237#1:444,8\n239#1:452,8\n347#1:468,23\n347#1:491,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final inputFieldHeight:I

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

.field private final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$46cj5dX0Rjotggy9u614sPOVTLg(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showActionSuccess$lambda$0(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Adc8GxPSpRLNU9R15s3MC3q4Suw(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupAmountInputErrorState$lambda$4$lambda$3$lambda$2(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObtcAlO9RnGbqUHZJZMzjJcEOwc(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->renderStakingPercentage$lambda$8$lambda$7(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PR2GueylZeCOTLybEXiadTq5gGw(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupViews$lambda$24$lambda$21(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVdL_mUaB9ZLprJAgqF9fgkIpI0(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupViews$lambda$24$lambda$23(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKvw1PIe6qPvGJ37EPRaKjRbM6w(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupViews$lambda$24$lambda$22(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t9xoA_h-5p3yAbhc4EAJ-kVTSd4(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showActionError$lambda$1(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vafL0gl-PT6KofHUZgatclhDSuc(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupSafeWithdrawal$lambda$11$lambda$10(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 59
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->Companion:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 2

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 56
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 59
    new-instance p2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/Double;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string/jumbo v0, "mvpDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "presenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/16 p1, 0x34

    .line 69
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->inputFieldHeight:I

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-object p0
.end method

.method public static final synthetic access$getStakingDetails$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    return-object v0
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->Companion:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;->newInstance(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final renderStakingPercentage$lambda$8$lambda$7(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 187
    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_percentage_info_alert:I

    .line 186
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 185
    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 264
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 265
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getActionBarTitleTextId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v2, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-eq v1, v2, :cond_0

    .line 267
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 270
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    .line 269
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 274
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    .line 272
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 277
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    .line 278
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 279
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->staking_details_contract_action:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 282
    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONDITIONS:I

    .line 283
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_description_26:I

    .line 284
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->staking_deposit_conditions:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 288
    :goto_0
    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private static final setupAmountInputErrorState$lambda$4$lambda$3$lambda$2(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onReplenishClick()V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 374
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 376
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textHeader:Landroid/widget/TextView;

    const-string/jumbo v4, "textHeader"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textBalance:Landroid/widget/TextView;

    const-string/jumbo v4, "textBalance"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 378
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getCustomView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 379
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 378
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->linearStakingSettings:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 383
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    .line 384
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupColors()V

    .line 385
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingSafeWithdrawalView:Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupColors()V

    .line 386
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingPercentageView:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/StakingPercentageView;->setupColors()V

    .line 387
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingWithdrawalFeeView:Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupColors()V

    return-void
.end method

.method private static final setupSafeWithdrawal$lambda$11$lambda$10(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$alertTitleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$alertMessageText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setupViews()V
    .locals 14

    .line 324
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    .line 325
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 326
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 327
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getAnimationId()I

    move-result v3

    const/16 v4, 0x60

    invoke-virtual {v1, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 328
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 331
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getHeaderTextId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 334
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/iMe/ui/custom/TitledInputFieldView;->setCustomView(Landroid/view/View;)V

    const-string/jumbo v3, "this"

    .line 336
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_amount_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_binance_receive_amount_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    iget-object v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v6, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_PROFIT_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v7

    .line 340
    :goto_0
    sget-object v8, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-eq v5, v8, :cond_2

    .line 341
    sget-object v8, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    .line 400
    :goto_2
    invoke-virtual {v1, v3}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v3

    const/16 v8, 0x10

    .line 402
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 403
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 404
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 343
    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/16 v4, 0x2002

    .line 344
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    const-string/jumbo v4, "setupViews$lambda$24$lambda$20$lambda$19$lambda$18"

    .line 346
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 80
    new-instance v4, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 407
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    if-eqz v5, :cond_3

    .line 409
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LinkActionView;->addMaxButton(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_3
    const/4 v2, -0x1

    .line 352
    iget v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->inputFieldHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupInputLayoutParams(II)V

    .line 355
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    const-string v0, "buttonSend"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_action_button_loading:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 355
    new-instance v9, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    new-instance v10, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    new-instance v11, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupViews$lambda$24$lambda$21(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionClick()V

    return-void
.end method

.method private static final setupViews$lambda$24$lambda$22(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->startStakingConditionsDialog()V

    return-void
.end method

.method private static final setupViews$lambda$24$lambda$23(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 362
    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    .line 361
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 365
    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    .line 364
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final showActionError$lambda$1(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final showActionSuccess$lambda$0(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private final showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x39

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 255
    invoke-static/range {v0 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation$default(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic showCommonInfoAlert$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 250
    sget p3, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    .line 249
    invoke-interface {p1, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 5
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

    .line 81
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 84
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 85
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 82
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 88
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 89
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 90
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 87
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 94
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 95
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 92
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    .line 99
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 100
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 97
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 80
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupActionBar()V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupViews()V

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupColors()V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public renderStakingPercentage(Lcom/iMe/model/staking/StakingAnnualPercentageData;)V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingPercentageView:Lcom/iMe/ui/custom/StakingPercentageView;

    .line 184
    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/custom/StakingPercentageView;->setupViewData(Lcom/iMe/model/staking/StakingAnnualPercentageData;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-string/jumbo p1, "renderStakingPercentage$lambda$8"

    .line 191
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public setupAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    return-void
.end method

.method public setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 139
    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LinkActionView;->setErrorState(Z)V

    .line 140
    invoke-virtual {v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getCustomView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 142
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    invoke-static {v0, p3, v2, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_2

    .line 152
    :cond_3
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setupSafeWithdrawal(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "alertTitleText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertMessageText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingSafeWithdrawalView:Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    .line 217
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    .line 215
    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupViewData(ZLcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-string/jumbo p1, "setupSafeWithdrawal$lambda$11"

    .line 219
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {v0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v5, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v5, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showBalance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textBalance:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWithdrawHelpAlert(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 245
    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 6

    .line 224
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "updateFeeView$lambda$12"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 226
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 227
    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v2, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 232
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 168
    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingWithdrawalFeeView:Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    const-string/jumbo v1, "updateFeeView$lambda$13"

    if-eqz p1, :cond_2

    .line 237
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 168
    invoke-virtual {v0, p1, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xc

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 168
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method public updateProgress(F)V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingPercentageView:Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/StakingPercentageView;->updateProgress(F)V

    return-void
.end method

.method public updateStakingStep(Lcom/iMe/model/staking/TransactionStep;)V
    .locals 3

    const-string/jumbo v0, "transactionStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    .line 171
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/model/staking/TransactionStep;->getButtonText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonText(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/iMe/model/staking/TransactionStep;->isButtonEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setActionButtonEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v2, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-ne v1, v2, :cond_2

    .line 175
    instance-of v1, p1, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    if-nez v1, :cond_1

    .line 176
    instance-of p1, p1, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 174
    :goto_1
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setApproveInfoButtonVisibility(Z)V

    :cond_2
    return-void
.end method

.method public updateWithdrawalFee(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "feeValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingWithdrawalFeeView:Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    .line 201
    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupViewData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "updateWithdrawalFee$lambda$9"

    .line 205
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method
