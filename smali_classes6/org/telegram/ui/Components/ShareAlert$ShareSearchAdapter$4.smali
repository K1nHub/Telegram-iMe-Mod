.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;
.super Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;IZ)V
    .locals 0

    .line 2968
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 2971
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 2972
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voipgroup_nameText"

    const-string v1, "voipgroup_inviteMembersBackground"

    .line 2973
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/HintDialogCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 2980
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    .line 2982
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    move-object v8, v3

    move-object v3, p2

    move-object p2, v8

    goto :goto_0

    .line 2983
    :cond_1
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_2

    neg-long v1, v1

    .line 2985
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_0

    .line 2986
    :cond_2
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    neg-long v1, v0

    .line 2988
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v3

    move-wide v1, v4

    .line 2990
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HintDialogCell;->getDialogId()J

    move-result-wide v4

    const/4 v0, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-nez v7, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 2991
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_5

    .line 2994
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 2996
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p2, ""

    .line 2998
    :goto_2
    invoke-virtual {p1, v1, v2, v6, p2}, Lorg/telegram/ui/Cells/HintDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    .line 2999
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Cells/HintDialogCell;->setChecked(ZZ)V

    return-void
.end method
