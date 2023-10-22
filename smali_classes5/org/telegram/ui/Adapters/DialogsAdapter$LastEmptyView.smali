.class public Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;
.super Landroid/widget/FrameLayout;
.source "DialogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LastEmptyView"
.end annotation


# instance fields
.field public moving:Z

.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 1324
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1329
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$100(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1331
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v4

    invoke-static {v4}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 1335
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1338
    instance-of v5, v4, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v5, :cond_4

    .line 1339
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v5, v5, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    goto :goto_2

    :cond_4
    move v5, v3

    .line 1341
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$800(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v6

    .line 1342
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v7, v5

    .line 1344
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v8

    const/16 v9, 0x15

    if-ne v8, v2, :cond_8

    if-ne v0, v2, :cond_8

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v8, v8, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v10, 0x13

    if-ne v8, v10, :cond_8

    .line 1345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p2, :cond_5

    .line 1347
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :cond_5
    if-nez p2, :cond_7

    .line 1350
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    sub-int/2addr p2, v0

    .line 1352
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/DialogsActivity;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x51

    .line 1353
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    goto/16 :goto_d

    :cond_8
    if-eqz v0, :cond_19

    if-nez v7, :cond_9

    if-nez v1, :cond_9

    goto/16 :goto_c

    .line 1358
    :cond_9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p2, :cond_a

    .line 1360
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :cond_a
    if-nez p2, :cond_c

    .line 1363
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr p2, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_b

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_b
    move v4, v3

    :goto_4
    sub-int/2addr p2, v4

    :cond_c
    sub-int/2addr p2, v5

    .line 1366
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x30

    goto :goto_5

    :cond_d
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_e

    const/16 v4, 0x4e

    goto :goto_5

    :cond_e
    const/16 v4, 0x48

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    move v5, v3

    move v8, v5

    :goto_6
    if-ge v5, v0, :cond_13

    .line 1369
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v9, v9, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v9, :cond_10

    .line 1370
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-boolean v9, v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->isForumCell:Z

    if-eqz v9, :cond_11

    if-nez v6, :cond_11

    .line 1371
    sget-boolean v9, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v9, :cond_f

    const/16 v9, 0x56

    goto :goto_7

    :cond_f
    const/16 v9, 0x5b

    :goto_7
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_8

    .line 1375
    :cond_10
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v9, v9, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v9, v2, :cond_12

    :cond_11
    add-int/2addr v8, v4

    :cond_12
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    sub-int/2addr v0, v2

    add-int/2addr v8, v0

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0x3a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/2addr v0, v5

    const/16 v5, 0x34

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v8, v0

    :cond_14
    if-eqz v1, :cond_15

    add-int/2addr v4, v2

    goto :goto_9

    :cond_15
    move v4, v3

    :goto_9
    if-ge v8, p2, :cond_17

    sub-int/2addr p2, v8

    add-int/2addr p2, v4

    if-eqz v7, :cond_1a

    .line 1387
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/DialogsActivity;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1100(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1389
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-eqz v0, :cond_1a

    .line 1391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    .line 1392
    iget v0, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->additionalPadding:I

    :goto_a
    sub-int/2addr p2, v0

    goto :goto_d

    :cond_16
    if-eqz v6, :cond_1a

    :goto_b
    sub-int/2addr p2, v7

    goto :goto_d

    :cond_17
    sub-int/2addr v8, p2

    if-ge v8, v4, :cond_19

    sub-int p2, v4, v8

    if-eqz v7, :cond_1a

    .line 1401
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/DialogsActivity;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v0, :cond_18

    if-nez v6, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1100(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1403
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-eqz v0, :cond_1a

    .line 1405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    .line 1406
    iget v0, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->additionalPadding:I

    goto :goto_a

    :cond_18
    if-eqz v6, :cond_1a

    goto :goto_b

    :cond_19
    :goto_c
    move p2, v3

    :cond_1a
    :goto_d
    if-gez p2, :cond_1b

    goto :goto_e

    :cond_1b
    move v3, p2

    .line 1419
    :goto_e
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$1100(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/16 p2, 0x3e8

    .line 1420
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v3, p2

    :cond_1c
    const/high16 p2, 0x40000000    # 2.0f

    .line 1422
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
