.class Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDocumentsAdapter"
.end annotation


# instance fields
.field private currentType:I

.field private inFastScrollMode:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V
    .locals 0

    .line 5581
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 5582
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    .line 5583
    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    return-void
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;)I
    .locals 0

    .line 5554
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    return p0
.end method


# virtual methods
.method public fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 5570
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getItemCount()I
    .locals 5

    .line 5594
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5595
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 5599
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v0, :cond_2

    .line 5600
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0

    .line 5602
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_3

    return v1

    .line 5605
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v0, :cond_5

    return v2

    .line 5608
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    if-nez v0, :cond_9

    .line 5609
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 5610
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v1, v2, v1

    if-nez v1, :cond_8

    .line 5611
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getEndLoadingStubs()I

    move-result v1

    if-eqz v1, :cond_7

    .line 5612
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getEndLoadingStubs()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :cond_8
    :goto_1
    return v0

    .line 5619
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 5716
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 5717
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    return v1

    .line 5720
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_2

    return v2

    .line 5723
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    const/4 v3, 0x2

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v4

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_5

    .line 5724
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1

    :cond_5
    return v3
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 3

    .line 5736
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 5740
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    .line 5744
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 5745
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 5746
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5747
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p1, v2, :cond_2

    .line 5748
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->formatedDate:Ljava/lang/String;

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5751
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->formatedDate:Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 4

    const/4 v0, 0x0

    .line 5758
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 5759
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->getTotalItemsCount()I

    move-result v2

    mul-int v2, v2, v1

    .line 5760
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr v3, p1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float p2, p2, p1

    int-to-float p1, v1

    div-float p1, p2, p1

    float-to-int p1, p1

    .line 5761
    aput p1, p3, v0

    float-to-int p1, p2

    .line 5762
    rem-int/2addr p1, v1

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public getTotalItemsCount()I
    .locals 2

    .line 5807
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5808
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0

    .line 5811
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isPlaylistList()Z
    .locals 2

    .line 5561
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 5685
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 5686
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto/16 :goto_6

    .line 5699
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 5700
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v1, v1, v4

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 5701
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p2, v0, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 5702
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5703
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2900(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    aget-object p2, p2, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto/16 :goto_6

    .line 5705
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_6

    .line 5688
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 5689
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    aget-object v1, v1, v4

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 5690
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p2, v0, :cond_8

    const/4 p2, 0x1

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 5691
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 5692
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2900(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    aget-object p2, p2, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_a

    const/4 v2, 0x1

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_6

    .line 5694
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq p2, v2, :cond_4

    if-eq p2, v3, :cond_3

    .line 5650
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5651
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5652
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5653
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 5655
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 5658
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHARED_AUDIO_CELL_MUSIC:I

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p0, p2, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5672
    :cond_2
    :goto_0
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 5673
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;->setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    .line 5674
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    if-ne v1, v3, :cond_7

    .line 5675
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5645
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2900(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    .line 5646
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5647
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 5633
    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5635
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    if-ne v4, v2, :cond_5

    .line 5636
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    .line 5638
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 5640
    :goto_1
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 5641
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 5642
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    move-object p1, p2

    goto :goto_2

    .line 5628
    :cond_6
    new-instance p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5629
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    .line 5679
    :cond_7
    :goto_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5680
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 3

    .line 5782
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5786
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->inFastScrollMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5787
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->inFastScrollMode:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 5790
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5791
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5792
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 5798
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9000(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;Z)V

    :cond_3
    return-void
.end method

.method public onStartFastScroll()V
    .locals 3

    .line 5768
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5772
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->inFastScrollMode:Z

    .line 5773
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->currentType:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5775
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    :cond_1
    return-void
.end method
