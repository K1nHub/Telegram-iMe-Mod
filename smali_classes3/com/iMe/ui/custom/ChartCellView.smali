.class public final Lcom/iMe/ui/custom/ChartCellView;
.super Lorg/telegram/ui/StatisticActivity$BaseChartCell;
.source "ChartCellView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {v0}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    return-void
.end method

.method public onZoomed()V
    .locals 0

    return-void
.end method

.method public zoomCanceled()V
    .locals 0

    return-void
.end method
