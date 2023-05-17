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

    .line 4456
    iput-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4454
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    if-gt v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    move-object/from16 v2, p2

    .line 4457
    iput-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    .line 4458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 4460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    add-int/lit16 v2, v2, -0xe10

    .line 4464
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v5

    const/4 v6, 0x2

    const-string v7, ""

    const-wide/16 v10, 0x0

    const/16 v12, 0x103

    const-wide/16 v13, 0x1

    if-ne v5, v6, :cond_5

    .line 4465
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4466
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3200(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v6, :cond_1

    .line 4467
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine2:I

    const-string v15, "BackgroundColorSinglePreviewLine2"

    invoke-static {v15, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_1

    .line 4469
    :cond_1
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine2:I

    const-string v15, "BackgroundPreviewLine2"

    invoke-static {v15, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x3c

    .line 4471
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4472
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4473
    iput v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4474
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4475
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4476
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4477
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4478
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4479
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4480
    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4481
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-direct {v6, v8, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4482
    iput-wide v13, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4483
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4484
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4486
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4487
    iget-wide v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 4488
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine3:I

    const-string v8, "BackgroundColorSinglePreviewLine3"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_2

    .line 4489
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3200(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v6, :cond_3

    .line 4490
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundColorSinglePreviewLine1:I

    const-string v8, "BackgroundColorSinglePreviewLine1"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_2

    .line 4492
    :cond_3
    sget v6, Lorg/telegram/messenger/R$string;->BackgroundPreviewLine1:I

    const-string v8, "BackgroundPreviewLine1"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4494
    :goto_2
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4495
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x109

    .line 4496
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4497
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4498
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4499
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4500
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4501
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4502
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4503
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-direct {v6, v8, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4504
    iput-wide v13, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4505
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4506
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4508
    iget-wide v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_a

    .line 4509
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4510
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4511
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v7

    invoke-direct {v6, v7, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4512
    iput-wide v13, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    const/4 v5, 0x5

    .line 4513
    iput v5, v6, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 4514
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4516
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4517
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "DELETED"

    goto :goto_3

    .line 4518
    :cond_4
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4519
    :goto_3
    sget v7, Lorg/telegram/messenger/R$string;->ChatBackgroundHint:I

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v6, "ChatBackgroundHint"

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4520
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4521
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x109

    .line 4522
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4523
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4524
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4525
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4526
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4527
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4528
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4529
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v2, v1, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4530
    iput-wide v13, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4531
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4532
    iput v4, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 4533
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4535
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v5

    const-string v15, "audio/ogg"

    if-ne v5, v4, :cond_8

    .line 4536
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4537
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4538
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4539
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v9, "audio/mp3"

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v9, v3, [B

    .line 4540
    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    move-object v9, v7

    const-wide/32 v6, -0x80000000

    .line 4541
    iput-wide v6, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/32 v6, 0x280000

    .line 4542
    iput-wide v6, v8, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/high16 v6, -0x80000000

    .line 4543
    iput v6, v8, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 4544
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 4545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lorg/telegram/messenger/R$string;->NewThemePreviewReply2:I

    const-string v3, "NewThemePreviewReply2"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp3"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 4546
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x3c

    .line 4547
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4548
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4549
    iput v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4550
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4551
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4552
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4553
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4554
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4555
    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4556
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4558
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_6

    .line 4559
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v7, "this is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text\nthis is very very long text"

    .line 4560
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v7, v2, 0x3c0

    .line 4561
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4562
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4563
    iput v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4564
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4565
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4566
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4567
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4568
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4569
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4570
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4571
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x0

    invoke-direct {v7, v8, v5, v4, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4572
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v12, 0x1

    .line 4573
    iput-wide v12, v7, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4574
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4577
    :cond_6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4578
    sget v7, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v8, "NewThemePreviewLine3"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 4579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2a

    .line 4580
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 4581
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v13, v12, :cond_7

    if-eq v7, v12, :cond_7

    add-int/lit8 v12, v7, 0x1

    .line 4583
    invoke-virtual {v8, v7, v12, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v13, 0x1

    .line 4584
    invoke-virtual {v8, v13, v12, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 4586
    iput v13, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v7, v13

    sub-int/2addr v7, v4

    .line 4587
    iput v7, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v7, "https://telegram.org"

    .line 4588
    iput-object v7, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 4589
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4591
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v7, v2, 0x3c0

    .line 4592
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v7, 0x1

    .line 4593
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v7, 0x103

    .line 4594
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4595
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4596
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4597
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4598
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4599
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4600
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4601
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4604
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v4, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4605
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v8, 0x1

    .line 4606
    iput-wide v8, v7, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4607
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4609
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4610
    sget v12, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v13, "NewThemePreviewLine1"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4611
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4612
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v3, 0x109

    .line 4613
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4614
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4615
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4616
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v8, 0x5

    .line 4617
    iput v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    .line 4618
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v3, 0x0

    .line 4619
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4620
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4621
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4622
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v8, v9, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4623
    sget v3, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v5, "NewThemePreviewName"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-string v3, "Test User"

    .line 4624
    iput-object v3, v7, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    const-wide/16 v12, 0x1

    .line 4625
    iput-wide v12, v8, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 4626
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 4627
    iput-object v6, v8, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4628
    iput-object v8, v7, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4629
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4631
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4633
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v2, v2, 0x78

    .line 4634
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v5, 0x1

    .line 4635
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x103

    .line 4636
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v2, 0x0

    .line 4637
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4638
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4639
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4640
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4641
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v6, 0x3

    or-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4642
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4643
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v15, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 4644
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4645
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v5, 0x404

    .line 4646
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const/4 v5, 0x3

    .line 4647
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4648
    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v5, 0x3f

    new-array v5, v5, [B

    .line 4649
    fill-array-data v5, :array_0

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 4652
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4653
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4654
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4655
    iput-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4656
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4657
    iput v4, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v1, 0x3e99999a    # 0.3f

    .line 4658
    iput v1, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 4659
    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4660
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4662
    :cond_8
    iget-boolean v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    if-eqz v5, :cond_9

    .line 4663
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v5, 0x7fffffff

    .line 4664
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v5, "Me"

    .line 4665
    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4667
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    const-wide/32 v6, 0x7ffffffe

    .line 4668
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v6, "Serj"

    .line 4669
    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4671
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4672
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4673
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4674
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 4676
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v7, "Guess why Half-Life 3 was never released."

    .line 4677
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v7, v2, 0x3c0

    .line 4678
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v8, -0x1

    .line 4679
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v10, 0x103

    .line 4680
    iput v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v10, 0x7ffffffe

    .line 4681
    iput v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4682
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v10, 0x0

    .line 4683
    iput-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4684
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x1

    .line 4685
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4686
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4687
    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4688
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v6, v4, v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4690
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v10, "No.\nAnd every unnecessary ping of the dev delays the release for 10 days.\nEvery request for ETA delays the release for 2 weeks."

    .line 4691
    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4694
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4695
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v7, 0x103

    .line 4696
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4697
    iput v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4698
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v7, 0x0

    .line 4699
    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4700
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v10, 0x1

    .line 4701
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4702
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4703
    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4704
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v7, v10, v6, v4, v11}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4706
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v6, "Is source code for Android coming anytime soon?"

    .line 4707
    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v2, v2, 0x258

    .line 4708
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 4709
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x103

    .line 4710
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4711
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4712
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v2, 0x0

    .line 4713
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4714
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v6, 0x1

    .line 4715
    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 4716
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4717
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4718
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    const/4 v6, 0x0

    invoke-direct {v3, v1, v5, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4720
    :cond_9
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4721
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewLine1:I

    const-string v7, "ThemePreviewLine1"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3c

    .line 4722
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v7, 0x1

    .line 4723
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v7, 0x103

    .line 4724
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4725
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4726
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4727
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4728
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4729
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4730
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4731
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4732
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$9900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v4, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4734
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4735
    sget v8, Lorg/telegram/messenger/R$string;->ThemePreviewLine2:I

    const-string v9, "ThemePreviewLine2"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v8, v2, 0x3c0

    .line 4736
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v8, 0x1

    .line 4737
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v8, 0x103

    .line 4738
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4739
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4740
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10000(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4741
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4742
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4743
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4744
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4745
    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4746
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10100(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v9, v12, v5, v4, v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4748
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit16 v8, v2, 0x82

    .line 4749
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v8, 0x1

    .line 4750
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v8, 0x103

    .line 4751
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4752
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v3, 0x5

    .line 4753
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4754
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4755
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v12, 0x3

    or-int/2addr v9, v12

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4756
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4757
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v9, "audio/mp4"

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v9, 0x0

    new-array v12, v9, [B

    .line 4758
    iput-object v12, v8, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4759
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v9, 0xf3

    .line 4760
    iput v9, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4761
    sget v9, Lorg/telegram/messenger/R$string;->ThemePreviewSongPerformer:I

    const-string v12, "ThemePreviewSongPerformer"

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 4762
    sget v9, Lorg/telegram/messenger/R$string;->ThemePreviewSongTitle:I

    const-string v12, "ThemePreviewSongTitle"

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 4763
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 4764
    iput-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4765
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4766
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4767
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v13

    invoke-direct {v12, v13, v5, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4769
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4770
    sget v8, Lorg/telegram/messenger/R$string;->ThemePreviewLine3:I

    const-string v9, "ThemePreviewLine3"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4771
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v8, 0x1

    .line 4772
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v6, 0x109

    .line 4773
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4774
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4775
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4776
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v3, 0x5

    .line 4777
    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    .line 4778
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v3, 0x0

    .line 4779
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4780
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4781
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4782
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    invoke-direct {v6, v8, v5, v4, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4783
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewLine3Reply:I

    const-string v5, "ThemePreviewLine3Reply"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 4784
    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4785
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4787
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v5, v2, 0x78

    .line 4788
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v5, 0x1

    .line 4789
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v5, 0x103

    .line 4790
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4791
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4792
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4793
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4794
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4795
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v8, 0x3

    or-int/2addr v6, v8

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4796
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4797
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v15, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v8, v6, [B

    .line 4798
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 4799
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v6, 0x404

    .line 4800
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    const/4 v6, 0x3

    .line 4801
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 4802
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const/16 v6, 0x3f

    new-array v6, v6, [B

    .line 4803
    fill-array-data v6, :array_1

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 4806
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4807
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4808
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4809
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4810
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4811
    iput v4, v5, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v3, 0x3e99999a    # 0.3f

    .line 4812
    iput v3, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 4813
    iput-boolean v4, v5, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4814
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4816
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4818
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v5, v2, 0xa

    .line 4819
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v5, 0x1

    .line 4820
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v5, 0x101

    .line 4821
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4822
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4823
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4824
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4825
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v7, 0x3

    or-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 4826
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4827
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v6, 0x0

    new-array v7, v6, [B

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 4828
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    const-wide/16 v7, 0x1

    .line 4829
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 4830
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 4831
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 4832
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 4833
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/16 v5, 0x1f4

    .line 4834
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v5, 0x12e

    .line 4835
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const-string v5, "s"

    .line 4836
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4837
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4838
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4839
    sget v2, Lorg/telegram/messenger/R$string;->ThemePreviewLine4:I

    const-string v5, "ThemePreviewLine4"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4840
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 4841
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4842
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4843
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$10900(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v1

    invoke-direct {v5, v1, v3, v4, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 4844
    iput-boolean v4, v5, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    .line 4845
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
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

.method static synthetic access$5200(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z
    .locals 0

    .line 4449
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    return p0
.end method

.method private hasButtons()Z
    .locals 3

    .line 4851
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$7200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    .line 4852
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$7200(Lorg/telegram/ui/ThemePreviewActivity;)I

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

    .line 4857
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4858
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 5000
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 5002
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$7200(Lorg/telegram/ui/ThemePreviewActivity;)I

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

    .line 5010
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5011
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

    .line 4960
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 4962
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 4965
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 4966
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4968
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_3

    .line 4969
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    .line 4970
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v3, p2, -0x1

    .line 4971
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr p2, v5

    .line 4972
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v6

    .line 4975
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v8, 0x12c

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 4976
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 4977
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

    .line 4981
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne v6, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 4982
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 4983
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

    move v2, v5

    .line 4987
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->showSecretMessages:Z

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 4988
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    const/4 p1, 0x0

    .line 4989
    invoke-virtual {v1, v0, p1, v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    goto :goto_1

    .line 4990
    :cond_3
    instance-of p1, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_4

    .line 4991
    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 4992
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4993
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, -0x1

    if-nez p2, :cond_0

    .line 4873
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4914
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4918
    new-instance p2, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .line 4919
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    const/16 v1, 0x11

    const/16 v2, 0x4c

    if-ne p2, v0, :cond_3

    .line 4923
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4924
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4926
    :cond_2
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 4932
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 4935
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    goto :goto_0

    .line 4942
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 4943
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4945
    :cond_5
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$6;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;Landroid/content/Context;)V

    .line 4951
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4954
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4955
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
