.class public final Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "StakingConditionsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingConditionsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,156:1\n13#2,4:157\n56#3,6:161\n*S KotlinDebug\n*F\n+ 1 StakingConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog\n*L\n29#1:157,4\n32#1:161,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 29
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 35
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 25
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 29
    new-instance p2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final setupColors()V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    .line 120
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 121
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 122
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 123
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 124
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 126
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    const/4 v1, 0x4

    .line 127
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 128
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 129
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x78

    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v3

    .line 126
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    const-string v0, "binding.buttonOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    .line 136
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupColors()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupListeners()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupTexts()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    const-string v10, "iconUrl"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "networkIconUrl"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "name"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "author"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "annualPercentage"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "startDate"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "completionDate"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "compoundThreshold"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "plannedWithdrawalFeeText"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "immediateWithdrawalFeeText"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "finishedFeeText"

    move-object/from16 v11, p11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v10

    .line 64
    iget-object v12, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 65
    new-instance v13, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;

    invoke-direct {v13, p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v12, v13, v1, v2, v3}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_details_apy_apr:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_percent:I

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 76
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_start:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_start:I

    .line 76
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 82
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_completion:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_done_24:I

    .line 82
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 88
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 89
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_compound_threshold:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_24:I

    .line 88
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 94
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewPlannedWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_planned_withdrawal:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_24:I

    .line 94
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 100
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewImmediateWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_immediate_withdrawal:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer_24:I

    .line 100
    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 106
    iget-object v0, v10, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewFinishedFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    const-string/jumbo v1, "viewFinishedFeeCell"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_end_output:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_end_24:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, p11

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    .line 106
    invoke-static/range {p1 .. p7}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData$default(Lcom/iMe/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method
