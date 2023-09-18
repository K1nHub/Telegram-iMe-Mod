.class public final Lcom/iMe/ui/custom/StakingPrognosisView;
.super Landroid/widget/FrameLayout;
.source "StakingPrognosisView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingPrognosisView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingPrognosisView.kt\ncom/iMe/ui/custom/StakingPrognosisView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n56#2,6:111\n4#3:117\n5#3,2:120\n4#3:122\n5#3,2:125\n4#3:127\n5#3,2:130\n2634#4:118\n2634#4:123\n2634#4:128\n1#5:119\n1#5:124\n1#5:129\n*S KotlinDebug\n*F\n+ 1 StakingPrognosisView.kt\ncom/iMe/ui/custom/StakingPrognosisView\n*L\n27#1:111,6\n59#1:117\n59#1:120,2\n62#1:122\n62#1:125,2\n66#1:127\n66#1:130,2\n59#1:118\n62#1:123\n66#1:128\n59#1:119\n62#1:124\n66#1:129\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$QxDdxaRE5gsxEZQUSg2VMPfPokA(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupViewData$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingPrognosisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/StakingPrognosisView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/StakingPrognosisView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingPrognosisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupView()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    .line 91
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textStatistics:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_statistics:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_mode:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTitle:Landroid/widget/TextView;

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_income_profit:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositTitle:Landroid/widget/TextView;

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_deposit_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositDescription:Landroid/widget/TextView;

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_deposit_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final setupViewData$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onDepositClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setupColors()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/ViewGroup;

    .line 59
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->constraintStatistics:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "constraintStatistics"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->linearDeposit:Landroid/widget/LinearLayout;

    const-string v5, "linearDeposit"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->viewChart:Lcom/iMe/ui/custom/ChartCellView;

    const-string v6, "viewChart"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/view/ViewGroup;

    .line 60
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/TextView;

    .line 62
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textStatistics:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDates:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textPercentageValue:Landroid/widget/TextView;

    aput-object v3, v2, v6

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeValue:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/TextView;

    .line 63
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "setupColors$lambda$6$lambda$3"

    .line 64
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    new-array v2, v6, [Landroid/widget/TextView;

    .line 66
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTokenValue:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitUsdValue:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/TextView;

    .line 67
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "setupColors$lambda$6$lambda$4"

    .line 68
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_2

    .line 71
    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    new-array v1, v1, [Landroid/widget/TextView;

    .line 72
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeTitle:Landroid/widget/TextView;

    const-string v7, "textModeTitle"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 73
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTitle:Landroid/widget/TextView;

    const-string v4, "textProfitTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v5

    .line 74
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositDescription:Landroid/widget/TextView;

    const-string v4, "textDepositDescription"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v6

    .line 70
    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 76
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositTitle:Landroid/widget/TextView;

    .line 77
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$6$lambda$5"

    .line 78
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 80
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ChartViewData;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "datesText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "percentageText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProfitText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDepositClickAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 47
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDates:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textPercentageValue:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeValue:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTokenValue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->viewChart:Lcom/iMe/ui/custom/ChartCellView;

    const/4 p2, 0x0

    invoke-virtual {p1, p5, p2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    .line 52
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    const-string p2, "buttonDeposit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/ui/custom/StakingPrognosisView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p6}, Lcom/iMe/ui/custom/StakingPrognosisView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 54
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    return-void
.end method
