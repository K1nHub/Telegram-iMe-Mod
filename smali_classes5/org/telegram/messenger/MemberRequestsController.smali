.class public Lorg/telegram/messenger/MemberRequestsController;
.super Lorg/telegram/messenger/BaseController;
.source "MemberRequestsController.java"


# static fields
.field private static final instances:[Lorg/telegram/messenger/MemberRequestsController;


# instance fields
.field private final firstImportersCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0ya6audeUMkB_jv4f4MhNb9uE2c(Lorg/telegram/messenger/MemberRequestsController;JLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MemberRequestsController;->lambda$getImporters$1(JLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$89gNYLDycfEa6xbgKwlAmlF5DKg(Lorg/telegram/messenger/MemberRequestsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MemberRequestsController;->lambda$getImporters$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/MemberRequestsController;

    .line 13
    sput-object v0, Lorg/telegram/messenger/MemberRequestsController;->instances:[Lorg/telegram/messenger/MemberRequestsController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 29
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MemberRequestsController;->firstImportersCache:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/messenger/MemberRequestsController;
    .locals 3

    .line 16
    sget-object v0, Lorg/telegram/messenger/MemberRequestsController;->instances:[Lorg/telegram/messenger/MemberRequestsController;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 18
    const-class v2, Lorg/telegram/messenger/MemberRequestsController;

    monitor-enter v2

    .line 19
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lorg/telegram/messenger/MemberRequestsController;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MemberRequestsController;-><init>(I)V

    .line 22
    aput-object v1, v0, p0

    .line 24
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private synthetic lambda$getImporters$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V
    .locals 2

    if-nez p1, :cond_0

    .line 59
    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    .line 60
    iget-object v1, p0, Lorg/telegram/messenger/MemberRequestsController;->firstImportersCache:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p3, p4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 62
    :cond_0
    invoke-interface {p5, p2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$getImporters$1(JLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 57
    new-instance v7, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MemberRequestsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCachedImporters(J)Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/MemberRequestsController;->firstImportersCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    return-object p1
.end method

.method public getImporters(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/RequestDelegate;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Lorg/telegram/tgnet/RequestDelegate;",
            ")I"
        }
    .end annotation

    .line 41
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 42
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;-><init>()V

    .line 43
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->requested:Z

    const/16 v2, 0x1e

    .line 45
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    if-nez v0, :cond_0

    .line 47
    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->q:Ljava/lang/String;

    .line 48
    iget p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 p3, p3, 0x4

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    :cond_0
    if-nez p4, :cond_1

    .line 51
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v2, p4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {p5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p3, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 54
    iget p3, p4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_date:I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2, p6}, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MemberRequestsController;JLorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {p3, v1, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    return p1
.end method

.method public onPendingRequestsUpdated(Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;)V
    .locals 4

    .line 68
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lorg/telegram/messenger/MemberRequestsController;->firstImportersCache:Landroid/util/LongSparseArray;

    neg-long v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;->requests_pending:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    .line 73
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePendingJoinRequests;->recent_requesters:Ljava/util/ArrayList;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    .line 74
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 75
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
