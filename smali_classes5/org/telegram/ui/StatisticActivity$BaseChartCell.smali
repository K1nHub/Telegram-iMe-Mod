.class public abstract Lorg/telegram/ui/StatisticActivity$BaseChartCell;
.super Landroid/widget/FrameLayout;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseChartCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;
    }
.end annotation


# instance fields
.field chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

.field chartType:I

.field chartView:Lorg/telegram/ui/Charts/BaseChartView;

.field checkBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;",
            ">;"
        }
    .end annotation
.end field

.field checkboxContainer:Landroid/view/ViewGroup;

.field data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field errorTextView:Landroid/widget/TextView;

.field progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;


# direct methods
.method public static synthetic $r8$lambda$KY5GDHXlaESneJWJ3Cy23mbNmUg(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NHQTZzqaRy4Zgz4TGfusmOv1Gpg(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$updateData$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ta5wbvDZ0qHu1Xk5Gu6UEVMKtRA(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lb-gFokEjV1hJd8ozUj2VGGcy-A(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$createTransitionAnimator$4(Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mIVRLnvxY5kp299veYLTTA6y7A8(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rf5jK5tz_PiAJKM8uRvKxXyGtpo(Lorg/telegram/ui/StatisticActivity$BaseChartCell;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->lambda$new$1(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V
    .locals 1

    const/4 v0, 0x0

    .line 1502
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1482
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1507
    invoke-direct {v0, v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1495
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 1508
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1509
    iput v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    .line 1510
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 1511
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1512
    new-instance v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$1;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$1;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    .line 1548
    new-instance v8, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 1549
    iget-object v8, v8, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->back:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;

    invoke-direct {v9}, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1550
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v8, v8, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->back:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x4

    if-eq v2, v7, :cond_3

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_0

    .line 1574
    new-instance v2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1575
    new-instance v2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1576
    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1569
    :cond_0
    new-instance v2, Lorg/telegram/ui/Charts/StackLinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/StackLinearChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1570
    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showPercentage:Z

    .line 1571
    new-instance v2, Lorg/telegram/ui/Charts/PieChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/PieChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    goto :goto_0

    .line 1564
    :cond_1
    new-instance v2, Lorg/telegram/ui/Charts/BarChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/BarChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1565
    new-instance v2, Lorg/telegram/ui/Charts/LinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/Charts/LinearChartView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1566
    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1559
    :cond_2
    new-instance v2, Lorg/telegram/ui/Charts/StackBarChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9, v4}, Lorg/telegram/ui/Charts/StackBarChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1560
    new-instance v2, Lorg/telegram/ui/Charts/StackBarChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9, v4}, Lorg/telegram/ui/Charts/StackBarChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1561
    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    goto :goto_0

    .line 1554
    :cond_3
    new-instance v2, Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9, v4}, Lorg/telegram/ui/Charts/DoubleLinearChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1555
    new-instance v2, Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9, v4}, Lorg/telegram/ui/Charts/DoubleLinearChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    .line 1556
    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    .line 1580
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1582
    iget-object v9, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v3, v9, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 1583
    iget-object v9, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v3, v9, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 1584
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1585
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1586
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v3, v3, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 v9, -0x2

    invoke-virtual {v2, v3, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1587
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1588
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v3, v3, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v2, v3, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1589
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v10, 0x2c

    const/16 v11, 0x2c

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    .line 1592
    invoke-virtual {v3, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1593
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v16, 0x1e

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1594
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1599
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    new-instance v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setDateSelectionListener(Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;)V

    .line 1604
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v1, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    .line 1605
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v1, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;

    invoke-direct {v3}, Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1606
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v1, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1607
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v1, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    new-instance v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1612
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    const/16 v3, 0x34

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    invoke-static {v4, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/16 v14, 0x10

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1616
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    if-ne v1, v8, :cond_4

    .line 1617
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1618
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1619
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1620
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1623
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;
    .locals 7

    .line 1783
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 1787
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v1, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    const/4 v3, 0x2

    .line 1788
    iput v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v0, 0x1

    .line 1789
    iput v0, v2, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 1791
    new-instance v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;

    invoke-direct {v2}, Lorg/telegram/ui/Charts/view_data/TransitionParams;-><init>()V

    .line 1792
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v5, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iput v5, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerEndOut:F

    .line 1793
    iget v4, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput v4, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerStartOut:F

    .line 1797
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    .line 1799
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p1, p1

    sub-int/2addr p1, v0

    .line 1801
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p2, p2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p2, p2, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget p2, p2, p1

    iput p2, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    .line 1804
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    .line 1806
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object v2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    const p2, 0x7fffffff

    move v4, v1

    move v5, v4

    .line 1810
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1811
    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[I

    aget v6, v6, p1

    if-le v6, v5, :cond_1

    .line 1812
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v5, v5, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[I

    aget v5, v5, p1

    .line 1813
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[I

    aget v6, v6, p1

    if-ge v6, p2, :cond_2

    .line 1814
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p2, p2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p2, p2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object p2, p2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[I

    aget p2, p2, p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    int-to-float p1, p2

    sub-int/2addr v5, p2

    int-to-float p2, v5

    add-float/2addr p1, p2

    .line 1816
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget v4, p2, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr p1, v4

    iget v5, p2, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v5, v4

    div-float/2addr p1, v5

    .line 1819
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    .line 1820
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    new-array p2, v3, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    aput v5, p2, v1

    if-eqz p3, :cond_5

    move v3, v4

    :cond_5
    aput v3, p2, v0

    .line 1821
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1822
    new-instance p3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v2, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x190

    .line 1835
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1836
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private synthetic lambda$createTransitionAnimator$4(Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v3, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    .line 1824
    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v1, v2

    .line 1826
    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    .line 1827
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget v0, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    mul-float/2addr p2, v0

    sub-float/2addr p2, v1

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    .line 1829
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 1830
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 1831
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Charts/BaseChartView;->fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V

    .line 1832
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1550
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomOut(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(J)V
    .locals 0

    .line 1600
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomCanceled()V

    .line 1601
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 1606
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->onZoomed()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 1607
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    return-void
.end method

.method private synthetic lambda$updateData$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1920
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1921
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1922
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iput p1, v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 1923
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1924
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private zoomOut(Z)V
    .locals 7

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-nez v0, :cond_0

    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomOut(Lorg/telegram/ui/Charts/BaseChartView;Z)V

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v3

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1734
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1737
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v0, p1, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 1739
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput-boolean v5, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1741
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1743
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    .line 1744
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1745
    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    goto :goto_0

    .line 1748
    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1749
    new-instance v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$3;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1772
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    .line 1773
    iget-object v4, v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1774
    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v0, v3, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    goto :goto_1

    .line 1776
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
.end method

.method public abstract onZoomed()V
.end method

.method public recolor()V
    .locals 7

    .line 1938
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1944
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->recolor()V

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    move v2, v0

    .line 1948
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1950
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1951
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 1953
    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    .line 1954
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_2

    .line 1955
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    .line 1957
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1958
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->recolor(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1962
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1845
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1848
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1849
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Charts/BaseChartView;->setLandscape(Z)V

    .line 1851
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Charts/BaseChartView;->setLandscape(Z)V

    .line 1852
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 1854
    iget-boolean v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 1870
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean v8, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->isTopHourChart:Z

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    xor-int/2addr v8, v2

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->showDate(Z)V

    .line 1874
    iget-object v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1875
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1876
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    invoke-virtual {p0, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    .line 1878
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1884
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)V

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-boolean v4, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setUseWeekInterval(Z)V

    .line 1886
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setUseWeek(Z)V

    .line 1888
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iput-boolean v3, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    .line 1891
    iget-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1892
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean v0, p1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1894
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-le p1, v2, :cond_7

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_7

    .line 1899
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    .line 1900
    new-instance v6, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;I)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->setData(Lorg/telegram/ui/Charts/view_data/LineViewData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1904
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-wide v6, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_8

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6, v7}, Lorg/telegram/ui/Charts/BaseChartView;->selectDate(J)V

    .line 1906
    invoke-virtual {p0, v2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomChart(Z)V

    goto :goto_4

    .line 1908
    :cond_8
    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomOut(Z)V

    .line 1909
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1912
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->recolor()V

    if-eqz p2, :cond_9

    .line 1915
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 p2, 0x3

    iput p2, p1, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    new-array p1, v1, [F

    .line 1916
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1917
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    new-instance v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;

    invoke-direct {v0}, Lorg/telegram/ui/Charts/view_data/TransitionParams;-><init>()V

    iput-object v0, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    .line 1918
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p2, p2, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iput v5, p2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    .line 1919
    new-instance p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1926
    new-instance p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$4;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1933
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void

    .line 1855
    :cond_a
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1856
    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->errorMessage:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 1857
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v7, :cond_b

    .line 1859
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1860
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1862
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1864
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkboxContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1865
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1866
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract zoomCanceled()V
.end method

.method public zoomChart(Z)V
    .locals 12

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v0

    .line 1634
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p1, :cond_0

    .line 1637
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1638
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3, v2, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->updatePicker(Lorg/telegram/ui/Charts/data/ChartData;J)V

    .line 1640
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)V

    .line 1643
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v5, :cond_9

    move v3, v6

    move v7, v3

    .line 1645
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v3, v8, :cond_7

    move v8, v6

    .line 1647
    :goto_1
    iget-object v10, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 1648
    iget-object v10, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Charts/data/ChartData$Line;

    .line 1649
    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v11, v11, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1650
    iget-object v10, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v10, v10, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/FlatCheckBox;->checked:Z

    .line 1651
    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v11, v11, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iput-boolean v10, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    .line 1652
    iget-object v11, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v11, v11, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/view_data/LineViewData;

    if-eqz v10, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    iput v11, v8, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    .line 1653
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v5, v8, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1654
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v10, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    move v8, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_3
    if-nez v8, :cond_6

    .line 1661
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v6, v8, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1662
    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v8, v8, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_9

    .line 1667
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v6, p1, :cond_8

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    iput-boolean v5, p1, Lorg/telegram/ui/Components/FlatCheckBox;->enabled:Z

    .line 1669
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->checkBoxes:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->checkBox:Lorg/telegram/ui/Components/FlatCheckBox;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    return-void

    .line 1675
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-wide v0, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    .line 1677
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v2, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1678
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v4, v2, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    .line 1679
    iput-boolean v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    .line 1680
    iput-boolean v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    .line 1682
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    if-nez p1, :cond_a

    .line 1685
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    .line 1686
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {v2, v3, v0, v1, v5}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomTo(Lorg/telegram/ui/Charts/BaseChartView;JZ)V

    .line 1689
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    .line 1690
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Charts/BaseChartView;->setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V

    if-eqz p1, :cond_b

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v6, p1, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 1697
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomedChartView:Lorg/telegram/ui/Charts/BaseChartView;

    iput v6, v2, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    .line 1698
    iput-boolean v6, p1, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 1699
    iput-boolean v5, v2, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1, v2, v0, v1, v6}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->zoomTo(Lorg/telegram/ui/Charts/BaseChartView;JZ)V

    goto :goto_5

    .line 1702
    :cond_b
    invoke-direct {p0, v0, v1, v5}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->createTransitionAnimator(JZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1703
    new-instance v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$2;-><init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1715
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return-void
.end method
