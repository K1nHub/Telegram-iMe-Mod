.class Lorg/telegram/ui/TopicsFragment$Adapter$1;
.super Landroid/view/View;
.source "TopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field precalcEllipsized:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/telegram/ui/TopicsFragment$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment$Adapter;Landroid/content/Context;)V
    .locals 0

    .line 2745
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2746
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->precalcEllipsized:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12

    .line 2750
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0x40

    .line 2752
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 2753
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v6}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 2754
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v6}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v6}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v6, v6, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v6, :cond_0

    goto/16 :goto_8

    .line 2757
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v6}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v6, v6, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 2758
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->precalcEllipsized:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    const/4 v8, 0x1

    if-nez v7, :cond_6

    .line 2760
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v9, 0xb

    const/16 v10, 0x32

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    iget-object v7, v7, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v10

    :goto_1
    add-int/lit8 v7, v7, 0x4

    goto :goto_2

    :cond_2
    const/16 v7, 0x12

    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 2761
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_3

    sub-int v7, p2, v7

    const/16 v9, 0x16

    .line 2762
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_3
    sub-int/2addr v7, v9

    goto :goto_5

    :cond_3
    sub-int v7, p2, v7

    .line 2763
    iget-object v11, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    iget-object v11, v11, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    move v9, v10

    :goto_4
    add-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_3

    .line 2764
    :goto_5
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    const-string v10, "00:00"

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v7, v9

    .line 2765
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v9, v9, v2

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v7, v7

    cmpg-float v7, v9, v7

    if-gtz v7, :cond_5

    move v7, v8

    goto :goto_6

    :cond_5
    move v7, v2

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2766
    iget-object v9, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->precalcEllipsized:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    const/16 v6, 0x14

    goto :goto_7

    :cond_7
    move v6, v2

    :goto_7
    add-int/2addr v6, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 2769
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v7}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v7, v7, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v7, v8, :cond_8

    move v1, v6

    .line 2772
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v7}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v7, v7, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v7, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    add-int/2addr v5, v6

    :cond_a
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-lez v4, :cond_c

    .line 2777
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter$1;->this$1:Lorg/telegram/ui/TopicsFragment$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, v5

    add-int/2addr p2, v1

    goto :goto_9

    :cond_c
    move p2, v2

    :goto_9
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 2778
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
