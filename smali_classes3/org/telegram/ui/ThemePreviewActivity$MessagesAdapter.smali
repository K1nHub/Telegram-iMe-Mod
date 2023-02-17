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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4009
    iput-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4007
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    if-gt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    move-object/from16 v2, p2

    .line 4010
    iput-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    .line 4011
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 4013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    add-int/lit16 v2, v2, -0xe10

    .line 4017
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x109

    const-wide/16 v8, 0x0

    const/16 v10, 0x103

    const-wide/16 v11, 0x1

    if-ne v5, v6, :cond_3

    .line 4018
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4019
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v6, :cond_1

    .line 4020
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine2:I

    const-string v13, "BackgroundColorSinglePreviewLine2"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_1

    .line 4022
    :cond_1
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine2:I

    const-string v13, "BackgroundPreviewLine2"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x3c

    .line 4024
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4025
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4026
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4027
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4028
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    iput-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4029
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4030
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4031
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4032
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4033
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4034
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-direct {v6, v8, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4035
    iput-wide v11, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4036
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4037
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4039
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4040
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v6, :cond_2

    .line 4041
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine1:I

    const-string v8, "BackgroundColorSinglePreviewLine1"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_2

    .line 4043
    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine1:I

    const-string v8, "BackgroundPreviewLine1"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4045
    :goto_2
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4046
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4047
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4048
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4049
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4050
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4051
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4052
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4053
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4054
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v2, v1, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4055
    iput-wide v11, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4056
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4057
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4058
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v5

    const-string v15, "audio/ogg"

    if-ne v5, v4, :cond_6

    .line 4059
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4060
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v14, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4061
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v13, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4062
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v14, "audio/mp3"

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v14, v3, [B

    .line 4063
    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const-wide/32 v6, -0x80000000

    .line 4064
    iput-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/32 v6, 0x280000

    .line 4065
    iput-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/high16 v6, -0x80000000

    .line 4066
    iput v6, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 4067
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 4068
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v13, Lorg/telegram/messenger/R$string;->NewThemePreviewReply2:I

    const-string v14, "NewThemePreviewReply2"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".mp3"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 4069
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v2, 0x3c

    .line 4070
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4071
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4072
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4073
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4074
    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    iput-wide v13, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4075
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4076
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4077
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4078
    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4079
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v7, v13, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4081
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_4

    .line 4082
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v13, "this is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text"

    .line 4083
    iput-object v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v13, v2, 0x3c0

    .line 4084
    iput v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4085
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4086
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4087
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4088
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4089
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4090
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4091
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4092
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4093
    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4094
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v10, v11, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4095
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v11, 0x1

    .line 4096
    iput-wide v11, v10, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4097
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    :cond_4
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4101
    sget v10, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v11, "NewThemePreviewLine3"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 4102
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2a

    .line 4103
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 4104
    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v12, -0x1

    if-eq v13, v12, :cond_5

    if-eq v10, v12, :cond_5

    add-int/lit8 v12, v10, 0x1

    const-string v14, ""

    .line 4106
    invoke-virtual {v11, v10, v12, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v13, 0x1

    .line 4107
    invoke-virtual {v11, v13, v12, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 4109
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v10, v13

    sub-int/2addr v10, v4

    .line 4110
    iput v10, v12, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v10, "https://telegram.org"

    .line 4111
    iput-object v10, v12, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 4112
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4114
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v10, v2, 0x3c0

    .line 4115
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4116
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v10, 0x103

    .line 4117
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4118
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4119
    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4120
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4121
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4122
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4123
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4124
    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4127
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v10, v11, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4128
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v11, 0x1

    .line 4129
    iput-wide v11, v10, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4130
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4132
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4133
    sget v13, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v14, "NewThemePreviewLine1"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4134
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4135
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x109

    .line 4136
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4137
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4138
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4139
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v11, 0x5

    .line 4140
    iput v11, v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    .line 4141
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4142
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4143
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4144
    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4145
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v6, v11, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4146
    sget v5, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v11, "NewThemePreviewName"

    invoke-static {v11, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-string v5, "Test User"

    .line 4147
    iput-object v5, v10, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-wide/16 v11, 0x1

    .line 4148
    iput-wide v11, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4149
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4150
    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4151
    iput-object v6, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4152
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4154
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4156
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v2, v2, 0x78

    .line 4157
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v6, 0x1

    .line 4158
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x103

    .line 4159
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4160
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4161
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4162
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4163
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4164
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v7, 0x3

    or-int/2addr v6, v7

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4165
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4166
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v15, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v6, v3, [B

    .line 4167
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4168
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v6, 0x404

    .line 4169
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const/4 v6, 0x3

    .line 4170
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4171
    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v6, 0x3f

    new-array v6, v6, [B

    .line 4172
    fill-array-data v6, :array_0

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 4175
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4176
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4177
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4178
    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4179
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v2, v1, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4180
    iput v4, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v1, 0x3e99999a    # 0.3f

    .line 4181
    iput v1, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 4182
    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4183
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4185
    :cond_6
    iget-boolean v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    if-eqz v5, :cond_7

    .line 4186
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v6, 0x7fffffff

    .line 4187
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v6, "Me"

    .line 4188
    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4190
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v7, 0x7ffffffe

    .line 4191
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v7, "Serj"

    .line 4192
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4195
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4196
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4197
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 4199
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v8, "Guess why Half-Life 3 was never released."

    .line 4200
    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v8, v2, 0x3c0

    .line 4201
    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v9, -0x1

    .line 4202
    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v11, 0x103

    .line 4203
    iput v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v11, 0x7ffffffe

    .line 4204
    iput v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4205
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4206
    iput-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4207
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v12, 0x1

    .line 4208
    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4209
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4210
    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4211
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v13

    invoke-direct {v12, v13, v7, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4213
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v11, "No.\nAnd every unnecessary ping of the dev delays the release for 10 days.\nEvery request for ETA delays the release for 2 weeks."

    .line 4214
    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4217
    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4218
    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v8, 0x103

    .line 4219
    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4220
    iput v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4221
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4222
    iput-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4223
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x1

    .line 4224
    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4225
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4226
    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4227
    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v11

    invoke-direct {v8, v11, v7, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4229
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v7, "Is source code for Android coming anytime soon?"

    .line 4230
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v2, v2, 0x258

    .line 4231
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4232
    iput-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x103

    .line 4233
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4234
    iput v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4235
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4236
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4237
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v7, 0x1

    .line 4238
    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4239
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4240
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4241
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v5, v1, v6, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4243
    :cond_7
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4244
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewLine1:I

    const-string v7, "ThemePreviewLine1"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3c

    .line 4245
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4246
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v7, 0x103

    .line 4247
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4248
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4249
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4250
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4251
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4252
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4253
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4254
    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4255
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-direct {v7, v10, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4257
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4258
    sget v10, Lorg/telegram/messenger/R$string;->ThemePreviewLine2:I

    const-string v11, "ThemePreviewLine2"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v10, v2, 0x3c0

    .line 4259
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4260
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v10, 0x103

    .line 4261
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4262
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4263
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4264
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4265
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4266
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4267
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4268
    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4269
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    invoke-direct {v11, v12, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4271
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit16 v10, v2, 0x82

    .line 4272
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4273
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v10, 0x103

    .line 4274
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4275
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v10, 0x5

    .line 4276
    iput v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4277
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4278
    iget v11, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v12, 0x3

    or-int/2addr v11, v12

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4279
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4280
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v11, "audio/mp4"

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v11, v3, [B

    .line 4281
    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4282
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v11, 0xf3

    .line 4283
    iput v11, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4284
    sget v11, Lorg/telegram/messenger/R$string;->ThemePreviewSongPerformer:I

    const-string v12, "ThemePreviewSongPerformer"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 4285
    sget v11, Lorg/telegram/messenger/R$string;->ThemePreviewSongTitle:I

    const-string v12, "ThemePreviewSongTitle"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 4286
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4287
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4288
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4289
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4290
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    invoke-direct {v11, v12, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4292
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4293
    sget v10, Lorg/telegram/messenger/R$string;->ThemePreviewLine3:I

    const-string v11, "ThemePreviewLine3"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4294
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4295
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x109

    .line 4296
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4297
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4298
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4299
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v10, 0x5

    .line 4300
    iput v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    .line 4301
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4302
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4303
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4304
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4305
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-direct {v6, v10, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4306
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewLine3Reply:I

    const-string v10, "ThemePreviewLine3Reply"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 4307
    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4308
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4310
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v6, v2, 0x78

    .line 4311
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v10, 0x1

    .line 4312
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x103

    .line 4313
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4314
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4315
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4316
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4317
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4318
    iget v10, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v11, 0x3

    or-int/2addr v10, v11

    iput v10, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4319
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4320
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v15, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v10, v3, [B

    .line 4321
    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4322
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v10, 0x404

    .line 4323
    iput v10, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const/4 v10, 0x3

    .line 4324
    iput v10, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4325
    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v10, 0x3f

    new-array v10, v10, [B

    .line 4326
    fill-array-data v10, :array_1

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 4329
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4330
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4331
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4332
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4333
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    invoke-direct {v6, v10, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4334
    iput v4, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v5, 0x3e99999a    # 0.3f

    .line 4335
    iput v5, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 4336
    iput-boolean v4, v6, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4337
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4341
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v6, v2, 0xa

    .line 4342
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v6, 0x1

    .line 4343
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x101

    .line 4344
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4345
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4346
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4347
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4348
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v10, 0x3

    or-int/2addr v7, v10

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4349
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4350
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    new-array v7, v3, [B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 4351
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    const-wide/16 v10, 0x1

    .line 4352
    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 4353
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 4354
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 4355
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 4356
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/16 v6, 0x1f4

    .line 4357
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v6, 0x12e

    .line 4358
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const-string v6, "s"

    .line 4359
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4360
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4361
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4362
    sget v2, Lorg/telegram/messenger/R$string;->ThemePreviewLine4:I

    const-string v6, "ThemePreviewLine4"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4363
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4364
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4365
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4366
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v2, v1, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4367
    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4368
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
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

.method static synthetic access$4500(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z
    .locals 0

    .line 4002
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    return p0
.end method

.method private hasButtons()Z
    .locals 3

    .line 4374
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    .line 4375
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6200(Lorg/telegram/ui/ThemePreviewActivity;)I

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

    .line 4380
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4381
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 4499
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 4501
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6200(Lorg/telegram/ui/ThemePreviewActivity;)I

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

    .line 4509
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 4510
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
    .locals 9

    .line 4459
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 4461
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 4464
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 4465
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4467
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_3

    .line 4468
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    .line 4469
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v3, p2, -0x1

    .line 4470
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr p2, v5

    .line 4471
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v6

    .line 4474
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v8, 0x12c

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 4475
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 4476
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

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4480
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne v6, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 4481
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 4482
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

    const/4 v2, 0x1

    .line 4486
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 4487
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    const/4 p1, 0x0

    .line 4488
    invoke-virtual {v1, v0, p1, v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    goto :goto_1

    .line 4489
    :cond_3
    instance-of p1, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_4

    .line 4490
    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 4491
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4492
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, -0x1

    if-nez p2, :cond_0

    .line 4396
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4420
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4424
    new-instance p2, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .line 4425
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/16 v1, 0x11

    const/16 v2, 0x4c

    if-ne p2, v0, :cond_3

    .line 4429
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4430
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4432
    :cond_2
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 4438
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4441
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4442
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4444
    :cond_4
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 4450
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4453
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4454
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
