.class public Lcom/smedialink/ui/custom/StakingDashboardView;
.super Landroid/widget/FrameLayout;
.source "StakingDashboardView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingDashboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingDashboardView.kt\ncom/smedialink/ui/custom/StakingDashboardView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,201:1\n56#2,6:202\n4#3:208\n5#3,2:211\n2634#4:209\n1#5:210\n37#6,2:213\n*S KotlinDebug\n*F\n+ 1 StakingDashboardView.kt\ncom/smedialink/ui/custom/StakingDashboardView\n*L\n33#1:202,6\n71#1:208\n71#1:211,2\n71#1:209\n71#1:210\n129#1:213,2\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

.field private onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

.field private onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$B33gJBlUVKxS3dL496G_NV375uE()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/custom/StakingDashboardView;->onHistoryClick$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q2CJg4xZ4t5jb-QBEqyFUlBYhiQ()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/custom/StakingDashboardView;->onCalculatorClick$lambda$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/StakingDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/smedialink/ui/custom/StakingDashboardView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/custom/StakingDashboardView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 37
    sget-object p1, Lcom/smedialink/ui/custom/StakingDashboardView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/custom/StakingDashboardView$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

    .line 38
    sget-object p1, Lcom/smedialink/ui/custom/StakingDashboardView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/custom/StakingDashboardView$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->setupView()V

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

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/StakingDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getOnCalculatorClick$p(Lcom/smedialink/ui/custom/StakingDashboardView;)Lorg/fork/utils/Callbacks$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method public static final synthetic access$getOnHistoryClick$p(Lcom/smedialink/ui/custom/StakingDashboardView;)Lorg/fork/utils/Callbacks$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method private static final onCalculatorClick$lambda$0()V
    .locals 0

    return-void
.end method

.method private static final onHistoryClick$lambda$1()V
    .locals 0

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->setupColors()V

    .line 171
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->setupViews()V

    .line 173
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setupViewData(FF)V
    .locals 11

    .line 96
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 97
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    add-float v2, p1, p2

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    new-array v6, v3, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    :goto_0
    if-ge v4, v3, :cond_0

    .line 103
    new-instance v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const/high16 v8, 0x3fc00000    # 1.5f

    .line 104
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    const-wide/16 v8, 0x1

    .line 105
    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSize(J)V

    const-string v8, "dialogIcon"

    .line 106
    iput-object v8, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->color:Ljava/lang/String;

    .line 107
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    const/4 v3, 0x6

    .line 110
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    goto :goto_1

    .line 114
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    const/4 v8, 0x3

    if-lez v7, :cond_2

    .line 116
    new-instance v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 117
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    float-to-double v9, p2

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSizeAsDouble(Ljava/lang/Double;)V

    const-string v9, "statisticChartLine_green"

    .line 119
    iput-object v9, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->color:Ljava/lang/String;

    .line 116
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 123
    new-instance v6, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 124
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    float-to-double v7, p1

    .line 125
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSizeAsDouble(Ljava/lang/Double;)V

    const-string v7, "statisticChartLine_blue"

    .line 126
    iput-object v7, v6, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->color:Ljava/lang/String;

    .line 123
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-array v6, v4, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 38
    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 112
    invoke-virtual {v1, v5, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 131
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    .line 134
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatShortFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomCenterText(Ljava/lang/String;)V

    .line 137
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 140
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 137
    invoke-virtual {v4, p1, v2, v5}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    .line 143
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 144
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 145
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 142
    invoke-virtual {v4, p2, v0, v1}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupViews()V
    .locals 18

    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 178
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textHeader:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_header:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    const/16 v3, 0x4b

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomSize(I)V

    .line 180
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_staked_title:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_profit_title:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 184
    new-instance v10, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 185
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_calculator:I

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->staking_dashboard_calculator:I

    invoke-interface {v3, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    new-instance v7, Lcom/smedialink/ui/custom/StakingDashboardView$setupViews$1$1;

    invoke-direct {v7, v0}, Lcom/smedialink/ui/custom/StakingDashboardView$setupViews$1$1;-><init>(Lcom/smedialink/ui/custom/StakingDashboardView;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    .line 184
    invoke-direct/range {v3 .. v9}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 188
    new-instance v3, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 189
    sget v12, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_history:I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->staking_dashboard_history:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 183
    new-instance v15, Lcom/smedialink/ui/custom/StakingDashboardView$setupViews$1$2;

    invoke-direct {v15, v0}, Lcom/smedialink/ui/custom/StakingDashboardView$setupViews$1$2;-><init>(Lcom/smedialink/ui/custom/StakingDashboardView;)V

    const/4 v14, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v11, v3

    .line 188
    invoke-direct/range {v11 .. v17}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 183
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->showLoading()V

    return-void
.end method

.method private final showLoading()V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 152
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 155
    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 156
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    const-wide/16 v5, 0x1

    .line 157
    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSize(J)V

    const-string v5, "dialogIcon"

    .line 158
    iput-object v5, v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->color:Ljava/lang/String;

    .line 159
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 153
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 161
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    const-string v2, "_"

    .line 162
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomCenterText(Ljava/lang/String;)V

    .line 164
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public final setupColors()V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    const-string v1, "windowBackgroundGray"

    .line 63
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 64
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textHeader:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteGrayText2"

    .line 65
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$6$lambda$3"

    .line 66
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 68
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->cardStakingDashboard:Landroidx/cardview/widget/CardView;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 69
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/widget/TextView;

    .line 70
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedTitle:Landroid/widget/TextView;

    const-string v5, "textStakedTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitTitle:Landroid/widget/TextView;

    const-string v6, "textProfitTitle"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "windowBackgroundWhiteGrayText"

    invoke-static {v4, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    new-array v1, v1, [Landroid/widget/TextView;

    .line 71
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    aput-object v3, v1, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    aput-object v3, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteBlackText"

    .line 72
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "setupColors$lambda$6$lambda$4"

    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewStakedDot:Landroid/view/View;

    const/4 v3, 0x6

    .line 76
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "statisticChartLine_blue"

    .line 77
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    .line 75
    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewProfitDot:Landroid/view/View;

    .line 80
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "statisticChartLine_green"

    .line 81
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 79
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->divider:Lcom/smedialink/ui/custom/DividerView;

    const-string v3, "divider"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    .line 85
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {v0}, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;->setupColors()V

    return-void
.end method

.method public final setupItem(Lcom/smedialink/model/staking/StakingDashboardItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lcom/smedialink/model/staking/StakingDashboardItem$Data;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/staking/StakingDashboardItem$Data;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->getStaked()F

    move-result v0

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->getProfit()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/smedialink/ui/custom/StakingDashboardView;->setupViewData(FF)V

    goto :goto_0

    .line 50
    :cond_0
    instance-of p1, p1, Lcom/smedialink/model/staking/StakingDashboardItem$Loading;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->showLoading()V

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingDashboardView;->setupColors()V

    return-void
.end method

.method public final setupListeners(Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "onCalculatorClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHistoryClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onCalculatorClick:Lorg/fork/utils/Callbacks$Callback;

    .line 58
    iput-object p2, p0, Lcom/smedialink/ui/custom/StakingDashboardView;->onHistoryClick:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method
