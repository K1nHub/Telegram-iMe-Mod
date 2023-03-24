.class public Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;
.super Landroid/view/View;
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

    .line 1165
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 1166
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$000(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$100(Lorg/telegram/ui/Adapters/DialogsAdapter;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1172
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1175
    instance-of v5, v4, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v5, :cond_1

    .line 1176
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v5, v5, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    goto :goto_1

    :cond_1
    move v5, v3

    .line 1178
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v6, v5

    if-eqz v0, :cond_12

    if-nez v6, :cond_2

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 1183
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p2, :cond_3

    .line 1185
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :cond_3
    if-nez p2, :cond_5

    .line 1188
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr p2, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    sub-int/2addr p2, v4

    :cond_5
    sub-int/2addr p2, v5

    .line 1191
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x30

    goto :goto_3

    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x4e

    goto :goto_3

    :cond_7
    const/16 v4, 0x48

    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    move v5, v3

    move v7, v5

    :goto_4
    if-ge v5, v0, :cond_b

    .line 1194
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v8, v8, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v8, :cond_a

    .line 1195
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-boolean v8, v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->isForumCell:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1196
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_8

    const/16 v8, 0x56

    goto :goto_5

    :cond_8
    const/16 v8, 0x5b

    :goto_5
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_6

    :cond_9
    add-int/2addr v7, v4

    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    sub-int/2addr v0, v2

    add-int/2addr v7, v0

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0x3a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->access$500(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/2addr v0, v5

    const/16 v5, 0x34

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v7, v0

    :cond_c
    if-eqz v1, :cond_d

    add-int/2addr v4, v2

    goto :goto_7

    :cond_d
    move v4, v3

    :goto_7
    if-ge v7, p2, :cond_f

    sub-int/2addr p2, v7

    add-int/2addr p2, v4

    if-eqz v6, :cond_e

    .line 1210
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_e

    goto :goto_8

    :cond_e
    move v3, p2

    goto :goto_8

    :cond_f
    sub-int/2addr v7, p2

    if-ge v7, v4, :cond_12

    sub-int/2addr v4, v7

    if-eqz v6, :cond_10

    .line 1218
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, p2

    :cond_10
    if-gez v4, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    .line 1227
    :cond_12
    :goto_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
