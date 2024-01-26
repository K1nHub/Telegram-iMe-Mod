.class public Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessagesAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private showSecretMessages:Z

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 4886
    iput-object v9, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4884
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    if-gt v0, v11, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    move-object/from16 v0, p2

    .line 4887
    iput-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    .line 4888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 4890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v7, v0, -0xe10

    .line 4894
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    const-string v12, ""

    const/16 v13, 0x109

    const/16 v2, 0x103

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x1

    if-ne v0, v1, :cond_9

    .line 4895
    iget-wide v0, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2

    .line 4896
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4897
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3600(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_1

    .line 4898
    sget v0, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_1

    .line 4900
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v7, 0x3c

    .line 4902
    iput v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4903
    iput-wide v3, v15, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4904
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4905
    iput v11, v15, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4906
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4907
    iput-boolean v11, v15, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4908
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4909
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4910
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4911
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4912
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move/from16 v2, v16

    move-wide v10, v3

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;ILorg/telegram/tgnet/TLRPC$Message;ZZLorg/telegram/ui/ThemePreviewActivity;)V

    .line 4918
    iput-wide v10, v14, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4919
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4920
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-wide v10, v3

    .line 4924
    :goto_2
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4925
    iget-wide v0, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    const/4 v1, 0x0

    if-gez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v15, v0

    goto :goto_3

    :cond_3
    move-object v15, v1

    :goto_3
    if-eqz v15, :cond_4

    .line 4927
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBackgroundMessagePreview:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4929
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4930
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBackgroundMessageReplyText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4931
    new-instance v17, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    const/4 v4, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide v10, v5

    move/from16 v5, v18

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;ILorg/telegram/tgnet/TLRPC$Message;ZZLorg/telegram/ui/ThemePreviewActivity;)V

    .line 4938
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4939
    iget-wide v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 4940
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4941
    iget-wide v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_5

    :cond_4
    move-wide v10, v5

    .line 4943
    iget-wide v2, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_5

    .line 4944
    sget v0, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine3:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_4

    .line 4945
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3600(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_6

    .line 4946
    sget v0, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_4

    .line 4948
    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4950
    :goto_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4951
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4952
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    move-object/from16 v17, v1

    :goto_5
    add-int/lit8 v15, v7, 0x3c

    .line 4954
    iput v15, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v0, 0x1

    .line 4955
    iput-wide v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4956
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v0, 0x1

    .line 4957
    iput v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4958
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v0, 0x0

    .line 4959
    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4960
    new-instance v7, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v14

    move-object/from16 v4, v17

    move-object v14, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ThemePreviewActivity;)V

    if-eqz v17, :cond_7

    .line 4967
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBackgroundMessageReplyName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    :cond_7
    const-wide/16 v0, 0x1

    .line 4969
    iput-wide v0, v14, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4970
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4971
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4973
    iget-wide v0, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_e

    iget-object v0, v9, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_e

    .line 4974
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v9, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 4975
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4976
    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4977
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v5, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    const-wide/16 v6, 0x1

    .line 4978
    iput-wide v6, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    const/4 v1, 0x5

    .line 4979
    iput v1, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 4980
    iget-object v1, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4982
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-eqz v0, :cond_8

    .line 4984
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 4985
    sget v2, Lorg/telegram/messenger/R$string;->ChatBackgroundHint:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_6

    .line 4987
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBackgroundHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4989
    :goto_6
    iput v15, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v2, 0x1

    .line 4990
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4991
    iput v13, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4992
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v0, 0x1

    .line 4993
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4994
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v0, 0x0

    .line 4995
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4996
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4997
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4998
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    const-wide/16 v0, 0x1

    .line 4999
    iput-wide v0, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 5000
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 5001
    iput v4, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 5002
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_9
    move-wide v10, v5

    .line 5004
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/16 v6, 0x404

    const-string v14, "audio/ogg"

    const/4 v15, 0x1

    if-ne v0, v15, :cond_c

    .line 5005
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5006
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5007
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v1, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5008
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v15, "audio/mp3"

    iput-object v15, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v15, 0x0

    new-array v3, v15, [B

    .line 5009
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const-wide/32 v4, -0x80000000

    .line 5010
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/32 v3, 0x280000

    .line 5011
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/high16 v3, -0x80000000

    .line 5012
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 5013
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 5014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->NewThemePreviewReply2:I

    const-string v5, "NewThemePreviewReply2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 5015
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v7, 0x3c

    .line 5016
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v3, 0x1

    .line 5017
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5018
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5019
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5020
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v3, 0x1

    .line 5021
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5022
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5023
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5024
    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5025
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v15, 0x0

    invoke-direct {v4, v5, v0, v3, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5027
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_a

    .line 5028
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v3, "this is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text"

    .line 5029
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v3, v7, 0x3c0

    .line 5030
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object v5, v14

    const-wide/16 v13, 0x1

    .line 5031
    iput-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5032
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5033
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5034
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v13, 0x1

    .line 5035
    iput v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5036
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5037
    iput-boolean v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5038
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5039
    iput-wide v10, v14, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5040
    new-instance v14, Lorg/telegram/messenger/MessageObject;

    sget v15, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v3, 0x0

    invoke-direct {v14, v15, v0, v13, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5041
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v10, 0x1

    .line 5042
    iput-wide v10, v14, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 5043
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object v5, v14

    .line 5046
    :goto_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5047
    sget v3, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v10, "NewThemePreviewLine3"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5048
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2a

    .line 5049
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 5050
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v11, -0x1

    if-eq v13, v11, :cond_b

    if-eq v3, v11, :cond_b

    add-int/lit8 v11, v3, 0x1

    .line 5052
    invoke-virtual {v10, v3, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v13, 0x1

    .line 5053
    invoke-virtual {v10, v13, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5054
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 5055
    iput v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v13

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    .line 5056
    iput v3, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v3, "https://telegram.org"

    .line 5057
    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 5058
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5060
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v3, v7, 0x3c0

    .line 5061
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 5062
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5063
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5064
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5065
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v3, 0x1

    .line 5066
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5067
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5068
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5069
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x0

    .line 5070
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5073
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x0

    invoke-direct {v10, v11, v0, v3, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5074
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v11, 0x1

    .line 5075
    iput-wide v11, v10, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 5076
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5078
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5079
    sget v3, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v13, "NewThemePreviewLine1"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 5080
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5081
    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v1, 0x109

    .line 5082
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5083
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x1

    .line 5084
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5085
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 5086
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v3, 0x5

    .line 5087
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 5088
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v1, 0x0

    .line 5089
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5090
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5091
    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5092
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x1

    invoke-direct {v3, v11, v0, v12, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5093
    sget v0, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v1, "NewThemePreviewName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-string v0, "Test User"

    .line 5094
    iput-object v0, v10, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-wide/16 v0, 0x1

    .line 5095
    iput-wide v0, v3, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 5096
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 5097
    iput-object v4, v3, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5098
    iput-object v3, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5099
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5101
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5103
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v7, v7, 0x78

    .line 5104
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v3, 0x1

    .line 5105
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5106
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v1, 0x0

    .line 5107
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5108
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x1

    .line 5109
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5110
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5111
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 5112
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5113
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 5114
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 5115
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 5116
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 5117
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const/4 v2, 0x1

    .line 5118
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v3, 0x3f

    new-array v3, v3, [B

    .line 5119
    fill-array-data v3, :array_0

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 5122
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5123
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5124
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v3, 0x0

    .line 5125
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5126
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v2, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5127
    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v0, 0x3e99999a    # 0.3f

    .line 5128
    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 5129
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 5130
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    move-object v5, v14

    .line 5132
    iget-boolean v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    if-eqz v0, :cond_d

    .line 5133
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v3, 0x7fffffff

    .line 5134
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v1, "Me"

    .line 5135
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 5137
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v3, 0x7ffffffe

    .line 5138
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v3, "Serj"

    .line 5139
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 5141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5142
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5143
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5144
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 5146
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v4, "Guess why Half-Life 3 was never released."

    .line 5147
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v4, v7, 0x3c0

    .line 5148
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v5, -0x1

    .line 5149
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5150
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v10, 0x7ffffffe

    .line 5151
    iput v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5152
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v10, 0x0

    .line 5153
    iput-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5154
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x1

    .line 5155
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 5156
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5157
    iget-wide v11, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5158
    iget-object v10, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v12, v3, v14, v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5160
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v10, "No.\nAnd every unnecessary ping of the dev delays the release for 10 days.\nEvery request for ETA delays the release for 2 weeks."

    .line 5161
    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 5164
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5165
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5166
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5167
    iput v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5168
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v4, 0x0

    .line 5169
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5170
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v10, 0x1

    .line 5171
    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 5172
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5173
    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5174
    iget-object v1, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v4, v10, v3, v12, v11}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5176
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v3, "Is source code for Android coming anytime soon?"

    .line 5177
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v7, v7, 0x258

    .line 5178
    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5179
    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5180
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5181
    iput v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5182
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v2, 0x0

    .line 5183
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5184
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v3, 0x1

    .line 5185
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 5186
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5187
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5188
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v5, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 5190
    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5191
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewLine1:I

    const-string v4, "ThemePreviewLine1"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v1, v7, 0x3c

    .line 5192
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 5193
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5194
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5195
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5196
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v4, 0x1

    .line 5197
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5198
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5199
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5200
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x0

    .line 5201
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5202
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v0, v4, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5204
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5205
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewLine2:I

    const-string v11, "ThemePreviewLine2"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v4, v7, 0x3c0

    .line 5206
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v11, 0x1

    .line 5207
    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5208
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5209
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5210
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v4, 0x1

    .line 5211
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5212
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5213
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5214
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v12, 0x0

    .line 5215
    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5216
    iget-object v11, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v0, v4, v14}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5218
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit16 v4, v7, 0x82

    .line 5219
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v11, 0x1

    .line 5220
    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5221
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5222
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v4, 0x5

    .line 5223
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5224
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5225
    iget v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v11, v11, 0x3

    iput v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 5226
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5227
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v11, "audio/mp4"

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v11, 0x0

    new-array v12, v11, [B

    .line 5228
    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 5229
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const-wide v11, 0x406e600000000000L    # 243.0

    .line 5230
    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 5231
    sget v11, Lorg/telegram/messenger/R$string;->ThemePreviewSongPerformer:I

    const-string v12, "ThemePreviewSongPerformer"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 5232
    sget v11, Lorg/telegram/messenger/R$string;->ThemePreviewSongTitle:I

    const-string v12, "ThemePreviewSongTitle"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 5233
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 5234
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5235
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5236
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5237
    iget-object v11, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v12, v13, v0, v14, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5239
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5240
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewLine3:I

    const-string v11, "ThemePreviewLine3"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 5241
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v11, 0x1

    .line 5242
    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v1, 0x109

    .line 5243
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5244
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x1

    .line 5245
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5246
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 5247
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v3, 0x5

    .line 5248
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 5249
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v1, 0x0

    .line 5250
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5251
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5252
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5253
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v4

    const/4 v11, 0x1

    invoke-direct {v3, v4, v0, v11, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5254
    sget v0, Lorg/telegram/messenger/R$string;->ThemePreviewLine3Reply:I

    const-string v1, "ThemePreviewLine3Reply"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 5255
    iput-object v10, v3, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5256
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5258
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v1, v7, 0x78

    .line 5259
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v3, 0x1

    .line 5260
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5261
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5262
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5263
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    .line 5264
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5265
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5266
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 5267
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5268
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 5269
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 5270
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 5271
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 5272
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const/4 v2, 0x1

    .line 5273
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v3, 0x3f

    new-array v3, v3, [B

    .line 5274
    fill-array-data v3, :array_1

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 5277
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5278
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5279
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v3, 0x0

    .line 5280
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5281
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v2, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5282
    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v0, 0x3e99999a    # 0.3f

    .line 5283
    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 5284
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 5285
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5287
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5289
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v1, v7, 0xa

    .line 5290
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v1, 0x1

    .line 5291
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v1, 0x101

    .line 5292
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5293
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x1

    .line 5294
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5295
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5296
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 5297
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5298
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v2, 0x0

    new-array v3, v2, [B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 5299
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    const-wide/16 v3, 0x1

    .line 5300
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const-wide/16 v3, 0x0

    .line 5301
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 5302
    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 5303
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 5304
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/16 v2, 0x1f4

    .line 5305
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v2, 0x12e

    .line 5306
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const-string v2, "s"

    .line 5307
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 5308
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5309
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5310
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewLine4:I

    const-string v2, "ThemePreviewLine4"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5311
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5312
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5313
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5314
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5315
    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 5316
    iget-object v0, v8, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_8
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x4t
        0x11t
        -0x32t
        -0x5dt
        0x56t
        -0x67t
        -0x2dt
        -0xct
        -0x1at
        0x3ft
        -0x19t
        -0x3t
        0x6dt
        -0x72t
        -0x36t
        -0x4t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1dt
        -0x1t
        -0x1t
        -0x19t
        -0x1t
        -0x1t
        -0x61t
        -0x2bt
        0x39t
        -0x39t
        -0x6ct
        0x1t
        -0x5bt
        -0x4t
        -0x2ft
        0x15t
        0x63t
        0xat
        0x61t
        0x2bt
        0x2dt
        0x73t
        -0x70t
        -0x4dt
        0x33t
        -0x3ft
        0x42t
        0x28t
        0x22t
        -0x7at
        -0x74t
        0x30t
        -0x7ct
        0x10t
        0x42t
        -0x78t
        0x10t
        0x44t
        0x10t
        0x21t
        0x4t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x4t
        0x11t
        -0x32t
        -0x5dt
        0x56t
        -0x67t
        -0x2dt
        -0xct
        -0x1at
        0x3ft
        -0x19t
        -0x3t
        0x6dt
        -0x72t
        -0x36t
        -0x4t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1dt
        -0x1t
        -0x1t
        -0x19t
        -0x1t
        -0x1t
        -0x61t
        -0x2bt
        0x39t
        -0x39t
        -0x6ct
        0x1t
        -0x5bt
        -0x4t
        -0x2ft
        0x15t
        0x63t
        0xat
        0x61t
        0x2bt
        0x2dt
        0x73t
        -0x70t
        -0x4dt
        0x33t
        -0x3ft
        0x42t
        0x28t
        0x22t
        -0x7at
        -0x74t
        0x30t
        -0x7ct
        0x10t
        0x42t
        -0x78t
        0x10t
        0x44t
        0x10t
        0x21t
        0x4t
        0x1t
    .end array-data
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z
    .locals 0

    .line 4879
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    return p0
.end method

.method private hasButtons()Z
    .locals 3

    .line 5322
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    .line 5323
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 5328
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5329
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 5492
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 5494
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    if-ltz p1, :cond_3

    .line 5502
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5503
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 5451
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 5453
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 5456
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 5457
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5459
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_5

    .line 5460
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    .line 5461
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v3, p2, -0x1

    .line 5462
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr p2, v5

    .line 5463
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v6

    .line 5466
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v8, 0x12c

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 5467
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 5468
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-ne v4, v7, :cond_1

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v8, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    .line 5472
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne v6, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 5473
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 5474
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-ne p2, v4, :cond_2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v8, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v2

    .line 5478
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-wide v6, p2, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-gez p2, :cond_4

    :cond_3
    move v2, v5

    :cond_4
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 5479
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    const/4 p2, 0x0

    .line 5480
    invoke-virtual {v1, v0, p2, v3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    goto :goto_2

    .line 5481
    :cond_5
    instance-of p1, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_6

    .line 5482
    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 5483
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5484
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5485
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$100(Lorg/telegram/ui/ThemePreviewActivity;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 5344
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-direct {p2, v1, p1, v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;ZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5405
    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 5409
    new-instance p2, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v2, v2, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-direct {p2, v1, p1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5410
    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x2

    const/16 v1, 0x11

    const/16 v2, 0x4c

    if-ne p2, p1, :cond_3

    .line 5414
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5415
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5417
    :cond_2
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$7;

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$7;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 5423
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    .line 5426
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$8;

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$8;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    goto :goto_0

    .line 5433
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5434
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5436
    :cond_5
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$9;

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$9;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 5442
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5445
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5446
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
