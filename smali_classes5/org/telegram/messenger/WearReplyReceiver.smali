.class public Lorg/telegram/messenger/WearReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearReplyReceiver.java"


# direct methods
.method public static synthetic $r8$lambda$3KwN1DciHivmwwVlWZDQ5RY7niI(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$1(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$53cYv4s00xPc9l20dMsC1Uyiv3Y(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$2(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$CaEsSqFhRgY3PxW2gpugjP475tc(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$0(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFw5yr68Zd9pJ5Vd5e3YVljuxN8(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$3(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JII)V
    .locals 7

    .line 48
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .line 49
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JII)V

    return-void
.end method

.method private synthetic lambda$onReceive$1(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V
    .locals 10

    .line 46
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-wide v6, p2

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 47
    new-instance v0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onReceive$2(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JII)V
    .locals 7

    .line 60
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .line 61
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JII)V

    return-void
.end method

.method private synthetic lambda$onReceive$3(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V
    .locals 10

    .line 58
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-wide v6, p2

    neg-long v1, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 59
    new-instance v0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JII)V
    .locals 24

    move/from16 v7, p5

    if-eqz v7, :cond_0

    .line 73
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v1, ""

    .line 74
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 75
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 76
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-wide/from16 v3, p3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 77
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 78
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 79
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p3

    const/4 v0, 0x0

    move-object v12, v0

    .line 82
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v10, p3

    invoke-virtual/range {v8 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    if-nez v7, :cond_1

    .line 85
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    move/from16 v4, p6

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZIIZI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 25
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 26
    invoke-static {p2}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "extra_voice_reply"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "dialog_id"

    const-wide/16 v1, 0x0

    .line 34
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "max_id"

    const/4 v3, 0x0

    .line 35
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "topic_id"

    .line 36
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v6, "currentAccount"

    .line 37
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    cmp-long v3, v4, v1

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 38
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    .line 42
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_4

    .line 45
    sget-object v9, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 54
    :cond_3
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-nez v1, :cond_4

    .line 57
    sget-object v9, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v6, v7

    move v7, v0

    .line 67
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JII)V

    :cond_5
    :goto_0
    return-void
.end method
