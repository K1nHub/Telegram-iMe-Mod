.class Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;
.super Lorg/telegram/ui/StatisticActivity$BaseChartCell;
.source "MessageStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;


# direct methods
.method public static synthetic $r8$lambda$ZbDDDj92htsXIU41df_z2_1fVSc(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->lambda$onZoomed$0(Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQMdQro0JG8HNhXPowJQoPZFSK0(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->lambda$onZoomed$1(Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    return-void
.end method

.method private synthetic lambda$onZoomed$0(Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 699
    iget-boolean p2, p3, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->canceled:Z

    if-nez p2, :cond_1

    iget p2, p3, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->adapterPosition:I

    if-ltz p2, :cond_1

    .line 700
    iget-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/MessageStatisticActivity;->access$100(Lorg/telegram/ui/MessageStatisticActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    iget p3, p3, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->adapterPosition:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    .line 701
    instance-of p3, p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    if-eqz p3, :cond_1

    .line 702
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-object p1, p3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 703
    check-cast p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object p1, p2, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    .line 704
    invoke-virtual {p2, p3}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomChart(Z)V

    .line 707
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->zoomCanceled()V

    return-void
.end method

.method private synthetic lambda$onZoomed$1(Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 683
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 684
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;->json:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 686
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget p3, p3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->graphType:I

    const/4 v1, 0x0

    invoke-static {p4, p3, v1}, Lorg/telegram/ui/StatisticActivity;->createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p3

    goto :goto_0

    :catch_0
    move-exception p3

    .line 688
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 690
    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraphError;

    if-eqz p4, :cond_1

    .line 691
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraphError;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_statsGraphError;->error:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p4, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 695
    :cond_1
    :goto_0
    new-instance p3, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p1, p2}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    return-void
.end method

.method public onZoomed()V
    .locals 17

    move-object/from16 v0, p0

    .line 642
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-wide v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-void

    .line 645
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 646
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v2, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-boolean v2, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->canGoZoom:Z

    if-nez v2, :cond_1

    return-void

    .line 649
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v1

    .line 650
    iget v5, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartType:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    .line 651
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    new-instance v4, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v5, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    invoke-direct {v4, v5, v1, v2}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/telegram/ui/Charts/data/ChartData;J)V

    iput-object v4, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 652
    invoke-virtual {v0, v7}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomChart(Z)V

    return-void

    .line 656
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v5, v5, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    if-nez v5, :cond_3

    return-void

    .line 660
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->zoomCanceled()V

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    iget-object v6, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v6, v6, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v6}, Lorg/telegram/ui/MessageStatisticActivity;->access$1100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v6, :cond_4

    .line 664
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-object v6, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 665
    invoke-virtual {v0, v7}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->zoomChart(Z)V

    return-void

    .line 669
    :cond_4
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;-><init>()V

    .line 670
    iget-object v6, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    iput-object v6, v9, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;->token:Ljava/lang/String;

    const/4 v6, 0x1

    cmp-long v8, v1, v3

    if-eqz v8, :cond_5

    .line 672
    iput-wide v1, v9, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;->x:J

    .line 673
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;->flags:I

    or-int/2addr v1, v6

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;->flags:I

    .line 676
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    new-instance v2, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    invoke-direct {v2}, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$1202(Lorg/telegram/ui/MessageStatisticActivity;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    .line 677
    iget-object v1, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/MessageStatisticActivity;->access$1300(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->adapterPosition:I

    .line 679
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v1, v1, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    .line 681
    iget-object v1, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/MessageStatisticActivity;->access$1500(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v5, v2}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v1, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    .line 709
    invoke-static {v1}, Lorg/telegram/ui/MessageStatisticActivity;->access$1400(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget v14, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    .line 681
    invoke-virtual/range {v8 .. v16}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v1

    .line 710
    iget-object v2, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$1700(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$1600(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method public zoomCanceled()V
    .locals 6

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1200(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1200(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->canceled:Z

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1300(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 720
    iget-object v4, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v4}, Lorg/telegram/ui/MessageStatisticActivity;->access$1300(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 721
    instance-of v5, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    if-eqz v5, :cond_1

    .line 722
    check-cast v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
