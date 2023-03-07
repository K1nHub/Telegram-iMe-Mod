.class public Lorg/telegram/messenger/ChatMessagesMetadataController;
.super Ljava/lang/Object;
.source "ChatMessagesMetadataController.java"


# instance fields
.field final chatActivity:Lorg/telegram/ui/ChatActivity;

.field extendedMediaRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private extendedMediaToCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field reactionsRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reactionsToCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D4uNVpVXm1Nxtb_9x9kLu4k5uy0(Lorg/telegram/messenger/ChatMessagesMetadataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatMessagesMetadataController;->lambda$loadReactionsForMessages$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tD6Pxm4sd1tNkjYGzxrj6y0mNqU(Lorg/telegram/messenger/ChatMessagesMetadataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatMessagesMetadataController;->lambda$loadExtendedMediaForMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsToCheck:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaToCheck:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method private synthetic lambda$loadExtendedMediaForMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-nez p2, :cond_0

    .line 90
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadReactionsForMessages$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-nez p2, :cond_2

    .line 63
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;

    iput-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->updateUnreadState:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkMessages(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;IIJ)V
    .locals 6

    .line 23
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 25
    iget p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0xa

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0xa

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p2, p1, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 33
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaToCheck:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-ge p3, p2, :cond_4

    .line 36
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v0, :cond_2

    iget-wide v2, p1, Lorg/telegram/messenger/MessageObject;->reactionsLastCheckTime:J

    sub-long v2, p4, v2

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 38
    iput-wide p4, p1, Lorg/telegram/messenger/MessageObject;->reactionsLastCheckTime:J

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasExtendedMediaPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p1, Lorg/telegram/messenger/MessageObject;->extendedMediaLastCheckTime:J

    sub-long v2, p4, v2

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 42
    iput-wide p4, p1, Lorg/telegram/messenger/MessageObject;->extendedMediaLastCheckTime:J

    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaToCheck:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 46
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsToCheck:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatMessagesMetadataController;->loadReactionsForMessages(JLjava/util/ArrayList;)V

    .line 47
    iget-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaToCheck:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatMessagesMetadataController;->loadExtendedMediaForMessages(JLjava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public loadExtendedMediaForMessages(JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;-><init>()V

    .line 83
    iget-object v1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 84
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 85
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 86
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;->id:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ChatMessagesMetadataController;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 93
    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x5

    if-le p2, p3, :cond_2

    .line 95
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_2
    return-void
.end method

.method public loadReactionsForMessages(JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesReactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesReactions;-><init>()V

    .line 56
    iget-object v1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 57
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 58
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 59
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesReactions;->id:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatMessagesMetadataController;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 72
    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x5

    if-le p2, p3, :cond_2

    .line 74
    iget-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_2
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->reactionsRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 104
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController;->extendedMediaRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
