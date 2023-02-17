.class public Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChannelAdminLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation


# instance fields
.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2314
    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)Landroid/content/Context;
    .locals 0

    .line 2305
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I
    .locals 0

    .line 2305
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2337
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 2842
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 2843
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 2899
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2901
    :try_start_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2903
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .line 2909
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2911
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2913
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 2939
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2941
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2943
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 0

    .line 2919
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2921
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2923
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 0

    .line 2949
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2951
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2953
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    .line 2969
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2971
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2973
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 0

    .line 2959
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 2961
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2963
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 2803
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 2804
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 2805
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$6700(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p2

    if-le p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto/16 :goto_2

    .line 2806
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p2, v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p2, v0, :cond_5

    .line 2807
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v4, p2, v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2808
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2810
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_4

    .line 2811
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2812
    iput-boolean v2, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v4, p2, 0x1

    .line 2813
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v5

    add-int/lit8 v6, p2, -0x1

    .line 2814
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v6

    .line 2817
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v8, 0x12c

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v5, v7, :cond_2

    .line 2818
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v9, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v4, v9

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2819
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-ne v5, v7, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-nez v5, :cond_2

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 2823
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne v6, p1, :cond_3

    .line 2824
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p2, v6

    sub-int/2addr v5, p2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2825
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-ne p2, v5, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long p2, v5, v9

    if-nez p2, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 p1, 0x0

    .line 2829
    invoke-virtual {v3, v0, p1, v4, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 2830
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 2831
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto :goto_2

    .line 2832
    :cond_4
    instance-of p1, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_5

    .line 2833
    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2834
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2835
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 2349
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2350
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2351
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2353
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .line 2355
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2356
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 2667
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    .line 2669
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$2;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;Landroid/content/Context;)V

    .line 2678
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    .line 2793
    new-instance p2, Lorg/telegram/ui/Cells/ChatUnreadCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 2795
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/ChatLoadingCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2797
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2798
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 2850
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_1

    .line 2852
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$4;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2878
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_2

    .line 2879
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2880
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    .line 2882
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2883
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 2885
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    :cond_2
    return-void
.end method

.method public updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 2318
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4100(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2321
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_0

    .line 2323
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2325
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2326
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    .line 2327
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    goto :goto_1

    .line 2329
    :cond_1
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2330
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2331
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    :goto_1
    return-void
.end method
