.class Lorg/telegram/ui/ChatUsersActivity$7;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$5(Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$10000(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$10000(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->access$10100(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    .line 823
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    :cond_0
    return-void
.end method

.method public synthetic didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate$-CC;->$default$didChangeOwner(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public didKickParticipant(J)V
    .locals 5

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$10000(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 831
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 833
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 834
    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 836
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v3, p1

    .line 837
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 839
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 840
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->kicked_by:J

    .line 841
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    .line 842
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$10000(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->access$10100(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    :cond_1
    return-void
.end method

.method public synthetic didSelectUser(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate$-CC;->$default$didSelectUser(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;J)V

    return-void
.end method
