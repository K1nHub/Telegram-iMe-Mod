.class Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareDialogsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$MyStoryDialog;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private dialogsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0

    .line 2676
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2673
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 2674
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    .line 2677
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->context:Landroid/content/Context;

    .line 2678
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 2665
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 2665
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method


# virtual methods
.method public fetchDialogs()V
    .locals 12

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2685
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$12200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2686
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$MyStoryDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$MyStoryDialog;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V

    .line 2687
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2690
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$12400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsForward:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2691
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$12500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsForward:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2692
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2695
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$12600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v4

    move v5, v3

    .line 2697
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_c

    .line 2698
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2699
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-nez v8, :cond_2

    goto/16 :goto_3

    .line 2702
    :cond_2
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v10, v8, v0

    if-nez v10, :cond_3

    goto/16 :goto_3

    .line 2705
    :cond_3
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2706
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2707
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-ne v8, v7, :cond_4

    .line 2708
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2710
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 2714
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$12700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 2716
    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v9

    invoke-static {v9}, Lcom/iMe/fork/controller/AlbumsController;->getInstance(I)Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v9

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v9, v10, v11}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_b

    .line 2720
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v9, :cond_7

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_7
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v9, :cond_9

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v9, :cond_8

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v9, :cond_9

    :cond_8
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v8, :cond_b

    .line 2721
    :cond_9
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-ne v8, v7, :cond_a

    .line 2722
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2724
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogsMap:Landroidx/collection/LongSparseArray;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2731
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2732
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2733
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->shareAlertDebugMode:I

    if-eq v0, v7, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_5

    .line 2740
    :cond_d
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_f

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2735
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2736
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2737
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2746
    :cond_f
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 2751
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 2768
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 2803
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    .line 2804
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 2805
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2807
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 2808
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v2, v3}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, v2, v3, v1, p2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, -0x1

    if-eqz p2, :cond_1

    .line 2793
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2794
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$8400(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x6d

    goto :goto_0

    :cond_0
    const/16 v1, 0x38

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2779
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$12900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, p0, v0, v1, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2788
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2798
    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
