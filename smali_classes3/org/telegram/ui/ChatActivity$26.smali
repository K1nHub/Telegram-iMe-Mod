.class Lorg/telegram/ui/ChatActivity$26;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field computingScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$b-4qIaSsy6fOGz5D9eY7AZ8eJ0w(Lorg/telegram/ui/ChatActivity$26;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$26;->lambda$onLayoutChildren$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;IIZ)V
    .locals 0

    .line 8228
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private synthetic lambda$onLayoutChildren$0()V
    .locals 2

    .line 8356
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 8267
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    .line 8268
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 8269
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 8275
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    .line 8276
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 8277
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 8283
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    .line 8284
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 8285
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    return p1
.end method

.method protected getParentStart()I
    .locals 1

    .line 8243
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 8244
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 8251
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 8252
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 8254
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getStartAfterPadding()I

    move-result v0

    return v0
.end method

.method public getStartForFixGap()I
    .locals 4

    .line 8234
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    float-to-int v0, v0

    .line 8235
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$29300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    int-to-float v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x30

    .line 8236
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$29400(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_1
    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 8259
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$26;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 8260
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 8262
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method protected hasSiblingChild(I)Z
    .locals 7

    .line 8321
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$1100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$29500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 8322
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$1100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 8323
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 8324
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 8325
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$28900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8327
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 8328
    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v2, v3, :cond_3

    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v2, v3, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    .line 8331
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 8333
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 8337
    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 8349
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 8350
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 8353
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8355
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 8356
    new-instance p1, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$26;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public scrollToPositionWithOffset(IIZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 8292
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 8294
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 8363
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 8364
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    invoke-static {v2, p1}, Lorg/telegram/ui/ChatActivity;->access$17016(Lorg/telegram/ui/ChatActivity;F)F

    .line 8365
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 8366
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    float-to-int p1, p1

    .line 8367
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;F)F

    .line 8368
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8374
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_6

    .line 8378
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8379
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    .line 8380
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v8, v7, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v8, :cond_2

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$29300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x30

    .line 8381
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$29400(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float/2addr v6, v7

    .line 8383
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v7, v8, :cond_5

    .line 8385
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 8386
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_2

    :cond_4
    move v2, p1

    .line 8388
    :goto_2
    invoke-super {p0, v2, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_7

    .line 8394
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 8397
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_c

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$29600(Lorg/telegram/ui/ChatActivity;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p2

    if-nez p2, :cond_c

    if-lez p1, :cond_c

    if-nez v2, :cond_c

    .line 8398
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$29700(Lorg/telegram/ui/ChatActivity;)Lorg/fork/enums/DialogType;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isMultiselect()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-gez p2, :cond_c

    .line 8399
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 8400
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    .line 8402
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 8403
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 8404
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 8408
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/16 p3, 0x6e

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v3

    if-gez p2, :cond_a

    .line 8409
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr v7, p2

    mul-float v7, v7, p3

    mul-float p2, p2, v6

    :goto_4
    add-float v5, v7, p2

    goto :goto_5

    .line 8411
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/16 v3, 0xa0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float p2, p2, v3

    if-gez p2, :cond_b

    .line 8412
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    const/16 p3, 0x32

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr v7, p2

    mul-float v7, v7, v6

    mul-float p2, p2, v5

    goto :goto_4

    .line 8418
    :cond_b
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    mul-float p1, p1, v5

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$17016(Lorg/telegram/ui/ChatActivity;F)F

    float-to-int p1, p1

    .line 8419
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 8420
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 8422
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_d

    .line 8423
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_6

    .line 8425
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 8427
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 8428
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_f
    return v2
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 1

    .line 8312
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 8313
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 8304
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$25602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8305
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 8306
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 8307
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
