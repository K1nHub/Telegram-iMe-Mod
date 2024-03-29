.class Lorg/telegram/ui/GroupCallActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private addMemberRow:I

.field private hasSelfUser:Z

.field private invitedEndRow:I

.field private invitedStartRow:I

.field private lastRow:I

.field private mContext:Landroid/content/Context;

.field private rowsCount:I

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private usersEndRow:I

.field private usersStartRow:I

.field private usersVideoGridEndRow:I

.field private usersVideoGridStartRow:I

.field private videoGridDividerRow:I

.field private videoNotAvailableRow:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 7855
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 7856
    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersStartRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->addMemberRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersEndRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedStartRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedEndRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridStartRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridEndRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoGridDividerRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoNotAvailableRow:I

    return p0
.end method

.method static synthetic access$20300(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I
    .locals 0

    .line 7831
    iget p0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)V
    .locals 0

    .line 7831
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private updateRows()V
    .locals 5

    .line 7875
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$16600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 7878
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    .line 7879
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$4600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->hasSelfUser:Z

    .line 7881
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridStartRow:I

    .line 7882
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    .line 7883
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridEndRow:I

    .line 7885
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2

    .line 7888
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoGridDividerRow:I

    goto :goto_0

    .line 7890
    :cond_2
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoGridDividerRow:I

    .line 7892
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupCallVideoMaxParticipants:I

    if-le v2, v0, :cond_3

    .line 7893
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoNotAvailableRow:I

    goto :goto_1

    .line 7895
    :cond_3
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoNotAvailableRow:I

    .line 7897
    :goto_1
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersStartRow:I

    .line 7898
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7899
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    .line 7901
    :cond_4
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersEndRow:I

    .line 7903
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 7907
    :cond_5
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedStartRow:I

    .line 7908
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    .line 7909
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedEndRow:I

    goto :goto_3

    .line 7904
    :cond_6
    :goto_2
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedStartRow:I

    .line 7905
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedEndRow:I

    .line 7912
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7913
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_a

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7914
    :cond_9
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->addMemberRow:I

    goto :goto_4

    .line 7916
    :cond_a
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->addMemberRow:I

    .line 7919
    :goto_4
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->lastRow:I

    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public addSelfToCounter()Z
    .locals 2

    .line 7860
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7863
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->hasSelfUser:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7866
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isJoined()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getItemCount()I
    .locals 1

    .line 7871
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->rowsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 8204
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->lastRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 8206
    :cond_0
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->addMemberRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 8208
    :cond_1
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoGridDividerRow:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x5

    return p1

    .line 8210
    :cond_2
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersStartRow:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersEndRow:I

    if-ge p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 8212
    :cond_3
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridStartRow:I

    if-lt p1, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridEndRow:I

    if-ge p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 8214
    :cond_4
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->videoNotAvailableRow:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 8101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 7924
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7925
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .line 7930
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7931
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 0

    .line 7954
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7955
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 7960
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7961
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 0

    .line 7942
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7943
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 7948
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7949
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 0

    .line 7966
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7967
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    .line 7978
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7979
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 0

    .line 7972
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->updateRows()V

    .line 7973
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 8000
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v6, :cond_a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto/16 :goto_5

    .line 8062
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    .line 8063
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v3

    .line 8064
    iget v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersVideoGridStartRow:I

    sub-int v4, v2, v4

    .line 8065
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$19900(Lorg/telegram/ui/GroupCallActivity;)Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->spanCount:I

    .line 8069
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$16600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ltz v4, :cond_2

    .line 8070
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$20000(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 8071
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$20000(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_0

    :cond_1
    if-ltz v4, :cond_2

    .line 8076
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 8077
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_0

    :cond_2
    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_6

    .line 8083
    iget-object v4, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    .line 8084
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$4600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    cmp-long v4, v8, v12

    if-nez v4, :cond_3

    .line 8085
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->avatarUpdaterDelegate:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->access$18600(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_4

    .line 8086
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->avatarUpdaterDelegate:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingProgress:F

    .line 8087
    :cond_4
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 8088
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v9

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v11, v4, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    move-object v8, v1

    move-object v10, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setData(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$VideoParticipant;Lorg/telegram/messenger/ChatObject$Call;J)V

    :cond_6
    if-eqz v3, :cond_13

    .line 8090
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-boolean v2, v1, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->attached:Z

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 8091
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2, v1, v5}, Lorg/telegram/ui/GroupCallActivity;->access$10900(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Z)V

    .line 8092
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2, v1, v6}, Lorg/telegram/ui/GroupCallActivity;->access$10900(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Z)V

    goto/16 :goto_5

    .line 8040
    :cond_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCallInvitedCell;

    .line 8042
    iget v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->invitedStartRow:I

    sub-int/2addr v2, v3

    .line 8043
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$16600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ltz v2, :cond_9

    .line 8044
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$19700(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 8045
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$19700(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    goto :goto_1

    :cond_8
    if-ltz v2, :cond_9

    .line 8050
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 8051
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    :cond_9
    :goto_1
    if-eqz v7, :cond_13

    .line 8057
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$19800(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->setData(ILjava/lang/Long;)V

    goto/16 :goto_5

    .line 8012
    :cond_a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 8014
    iget v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->usersStartRow:I

    sub-int/2addr v2, v3

    .line 8015
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$16600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ltz v2, :cond_c

    .line 8016
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$19600(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 8017
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$19600(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    goto :goto_2

    :cond_b
    if-ltz v2, :cond_c

    .line 8022
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 8023
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    :goto_2
    move-object v10, v2

    goto :goto_3

    :cond_c
    move-object v10, v7

    :goto_3
    if-eqz v10, :cond_13

    .line 8029
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 8030
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$4600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    cmp-long v8, v2, v12

    if-nez v8, :cond_d

    .line 8031
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v8, v8, Lorg/telegram/ui/GroupCallActivity;->avatarUpdaterDelegate:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    if-eqz v8, :cond_d

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->access$18600(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v7

    :cond_d
    move-object v14, v7

    if-eqz v14, :cond_e

    .line 8032
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->avatarUpdaterDelegate:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingProgress:F

    .line 8033
    :cond_e
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getParticipant()Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getParticipant()Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v2, v7, v2

    if-nez v2, :cond_f

    move v5, v6

    .line 8034
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v9

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v11, v2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    move-object v8, v1

    move v15, v5

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setData(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/messenger/ChatObject$Call;JLorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 8035
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setUploadProgress(FZ)V

    goto :goto_5

    .line 8002
    :cond_10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCallTextCell;

    .line 8003
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenTextUnscrolled:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_11

    move v6, v4

    goto :goto_4

    :cond_11
    const/4 v6, 0x0

    :goto_4
    invoke-static {v2, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    .line 8004
    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/GroupCallTextCell;->setColors(II)V

    .line 8005
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_12

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8006
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupShareLink:I

    const-string v3, "VoipGroupShareLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/GroupCallTextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_5

    .line 8008
    :cond_12
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupInviteMember:I

    const-string v3, "VoipGroupInviteMember"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/GroupCallTextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    :cond_13
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 8194
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 8180
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x847c77

    .line 8181
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41500000    # 13.0f

    .line 8182
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8183
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0xa

    .line 8184
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8185
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8186
    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelVideoNotAvailableAdmin:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupCallVideoMaxParticipants:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Participants"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "VoipChannelVideoNotAvailableAdmin"

    invoke-static {v1, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8188
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->VoipVideoNotAvailableAdmin:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupCallVideoMaxParticipants:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Members"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "VoipVideoNotAvailableAdmin"

    invoke-static {v1, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 8172
    :cond_2
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$ListAdapter$5;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupCallActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 8155
    :cond_3
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v1}, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;Z)V

    goto :goto_1

    .line 8142
    :cond_4
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$ListAdapter$3;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupCallActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 8124
    :cond_5
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$ListAdapter$2;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupCallActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 8111
    :cond_6
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupCallActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;)V

    .line 8197
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 8198
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8199
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 7984
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 7986
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 7987
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIcon:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    .line 7988
    :goto_0
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setGrayIconColor(II)V

    .line 7989
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq p1, v4, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setDrawDivider(Z)V

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_5

    .line 7991
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCallInvitedCell;

    .line 7992
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIcon:I

    goto :goto_1

    :cond_3
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    .line 7993
    :goto_1
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->setGrayIconColor(II)V

    .line 7994
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq p1, v4, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/GroupCallInvitedCell;->setDrawDivider(Z)V

    :cond_5
    :goto_2
    return-void
.end method
