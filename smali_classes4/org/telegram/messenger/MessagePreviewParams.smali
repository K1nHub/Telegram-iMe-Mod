.class public Lorg/telegram/messenger/MessagePreviewParams;
.super Ljava/lang/Object;
.source "MessagePreviewParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;,
        Lorg/telegram/messenger/MessagePreviewParams$Messages;
    }
.end annotation


# instance fields
.field public currentLink:Landroid/text/style/CharacterStyle;

.field public forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public hasCaption:Z

.field public hasMedia:Z

.field public hasPreview:Z

.field public hasSenders:Z

.field public hideCaption:Z

.field public hideForwardSendersName:Z

.field public isAuthorHiddenForce:Z

.field public isFromShareAlert:Z

.field public isMediaHidden:Z

.field public isPreviewHidden:Z

.field public isSecret:Z

.field public isVideo:Z

.field public linkMedia:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public multipleUsers:Z

.field public noforwards:Z

.field private previewView:Lorg/telegram/ui/Components/MessagePreviewView;

.field public quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public quoteEnd:I

.field public quoteStart:I

.field public replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field public singleLink:Z

.field public template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

.field public wasMediaHidden:Z

.field public wasPreviewHidden:Z

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public webpagePhoto:Z

.field public webpageSmall:Z

.field public webpageTop:Z

.field public willSeeSenders:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 262
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    invoke-static {p0}, Lorg/telegram/messenger/MessagePreviewParams;->singletonArrayList(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagePreviewParams;->toPreviewMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;

    move-result-object p0

    return-object p0
.end method

.method public static areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 423
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 427
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagePreviewParams;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagePreviewParams;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static singletonArrayList(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private toPreviewMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;
    .locals 11

    .line 496
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v7, 0x1

    if-eq p3, v7, :cond_0

    .line 498
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 502
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 503
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 504
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 505
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 506
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 507
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 508
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const/4 v8, 0x0

    .line 509
    iput v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 510
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 511
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 514
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    iput-boolean p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 515
    iput-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 516
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 517
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 518
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 519
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    .line 520
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    .line 521
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_3

    .line 522
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 525
    :cond_3
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 526
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 527
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez p3, :cond_9

    const/4 p2, 0x0

    .line 531
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 532
    iget-boolean v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v2, :cond_8

    .line 533
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_5

    .line 535
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result p2

    if-nez p2, :cond_4

    .line 536
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    goto :goto_2

    .line 538
    :cond_4
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    :goto_2
    move-object p2, v4

    goto :goto_3

    .line 540
    :cond_5
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-eqz v6, :cond_6

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    cmp-long v2, v9, v0

    if-nez v2, :cond_6

    cmp-long v0, v4, v0

    if-eqz v0, :cond_8

    .line 541
    :cond_6
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    .line 542
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 543
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 544
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    goto :goto_3

    .line 546
    :cond_7
    iput-boolean v7, p0, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 551
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 552
    iget p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 556
    :cond_9
    new-instance p2, Lorg/telegram/messenger/MessagePreviewParams$1;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagePreviewParams$1;-><init>(Lorg/telegram/messenger/MessagePreviewParams;ILorg/telegram/tgnet/TLRPC$Message;ZZI)V

    .line 588
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    iput-boolean v0, p2, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 589
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v0, p2, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 590
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result p1

    iput-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->hasPreview:Z

    .line 591
    invoke-virtual {p2, v7}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    if-nez p3, :cond_a

    move v8, v7

    .line 593
    :cond_a
    iput-boolean v8, p2, Lorg/telegram/messenger/MessageObject;->previewForward:Z

    .line 595
    iput-boolean v7, p2, Lorg/telegram/messenger/MessageObject;->preview:Z

    return-object p2
.end method


# virtual methods
.method public attach(Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    return-void
.end method

.method public checkCurrentLink(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-eqz p1, :cond_1

    .line 386
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 387
    check-cast p1, Landroid/text/Spanned;

    .line 388
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 390
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 391
    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    aget-object p1, p1, v2

    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public checkEdits(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iput-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 625
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 628
    iput-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move v0, v1

    .line 632
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_2

    .line 633
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 635
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 639
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz p1, :cond_3

    .line 640
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->updateAll()V

    :cond_3
    return-void
.end method

.method public enableTemplatePreviewMode(Lcom/iMe/storage/domain/model/templates/TemplateModel;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasPreview:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    return-void
.end method

.method public hasLink(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 401
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    const/4 v1, 0x1

    .line 403
    :try_start_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 405
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 407
    :goto_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    move v2, v0

    .line 409
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 410
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/telegram/messenger/MessagePreviewParams;->areUrlsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFromShareAlert()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->isFromShareAlert:Z

    return v0
.end method

.method public isTemplatePreview()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateForward(Ljava/util/ArrayList;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 437
    iput-boolean v10, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasPreview:Z

    .line 438
    iput-boolean v10, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    .line 439
    iput-boolean v10, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    .line 440
    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    iput-boolean v0, v8, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    .line 441
    iput-boolean v10, v8, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    const/4 v11, 0x0

    if-eqz v9, :cond_a

    .line 444
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v0, v10

    .line 445
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v13, 0x1

    if-ge v0, v1, :cond_3

    .line 446
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 447
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iput-boolean v13, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    .line 451
    :cond_0
    iget-boolean v2, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasPreview:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    iput-boolean v13, v8, Lorg/telegram/messenger/MessagePreviewParams;->hasPreview:Z

    .line 455
    :cond_1
    iget-boolean v2, v8, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v2, :cond_2

    .line 456
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_2

    .line 458
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 459
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_3
    new-instance v14, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object v0, v8, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    move-object v7, v0

    goto :goto_1

    :cond_4
    move-object v7, v11

    :goto_1
    move-object v0, v14

    move-object v1, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    iput-object v14, v8, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 465
    iget-object v0, v14, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    iput-object v11, v8, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 469
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    .line 471
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 473
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 474
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_4

    .line 476
    :cond_6
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 477
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 478
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_3

    .line 480
    :cond_7
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_3
    neg-long v1, v1

    .line 483
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 484
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 487
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v13, :cond_b

    .line 488
    iput-boolean v13, v8, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    goto :goto_5

    .line 491
    :cond_a
    iput-object v11, v8, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    :cond_b
    :goto_5
    return-void
.end method

.method public updateLink(ILorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 297
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v1, 0x1

    .line 298
    iput-boolean v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    .line 299
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eq v2, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 300
    :goto_0
    iput-object p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 301
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v3, :cond_1

    .line 302
    iput-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto/16 :goto_b

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    .line 308
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    if-nez v3, :cond_5

    if-eqz p6, :cond_5

    .line 309
    iget-object v3, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_5

    .line 310
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    .line 311
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    if-eqz v3, :cond_5

    .line 312
    iput-boolean v1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 316
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 317
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {v5, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-array p3, v1, [Ljava/lang/CharSequence;

    aput-object v5, p3, v0

    .line 319
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 320
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 321
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 322
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 323
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, p3, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 324
    aget-object p3, p3, v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 325
    iget-boolean p3, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    if-eqz p2, :cond_7

    .line 327
    iget p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p3, p3, 0x200

    iput p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 328
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 329
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 330
    iget-boolean v5, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 v6, v5, 0x1

    iput-boolean v6, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 331
    iput-boolean v5, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 332
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p3, :cond_6

    move p3, v1

    goto :goto_3

    :cond_6
    move p3, v0

    :goto_3
    iput-boolean p3, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 333
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    goto :goto_4

    .line 335
    :cond_7
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    .line 337
    :goto_4
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 338
    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    if-eqz p4, :cond_8

    .line 341
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 342
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz p5, :cond_8

    .line 344
    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 345
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 347
    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getEntities()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    .line 348
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    .line 349
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 354
    :cond_8
    new-instance p2, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p4, 0x2

    new-instance p5, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p5, p1, v3, v1, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-direct {p2, p0, p3, p4, p5}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;)V

    iput-object p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 355
    iget-object p1, p2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 356
    iput-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto/16 :goto_b

    .line 358
    :cond_9
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 359
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of p3, p2, Landroid/text/Spanned;

    if-eqz p3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 360
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object p3, p2

    check-cast p3, Landroid/text/Spanned;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const-class p4, Landroid/text/style/URLSpan;

    invoke-interface {p3, v0, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_b

    .line 361
    array-length p2, p2

    if-gt p2, v1, :cond_a

    goto :goto_5

    :cond_a
    move p2, v0

    goto :goto_6

    :cond_b
    :goto_5
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    goto :goto_9

    .line 362
    :cond_c
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    instance-of p3, p2, Landroid/text/Spanned;

    if-eqz p3, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 363
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spanned;

    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const-class p4, Landroid/text/style/URLSpan;

    invoke-interface {p2, v0, p3, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_e

    .line 364
    array-length p2, p2

    if-gt p2, v1, :cond_d

    goto :goto_7

    :cond_d
    move p2, v0

    goto :goto_8

    :cond_e
    :goto_7
    move p2, v1

    :goto_8
    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    .line 366
    :cond_f
    :goto_9
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasLinkMediaToMakeSmall()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v2, :cond_12

    if-eqz p6, :cond_12

    .line 367
    iget-object p2, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_12

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_12

    .line 368
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLinkMediaSmall()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    if-nez p2, :cond_11

    :cond_10
    move v0, v1

    :cond_11
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    goto :goto_a

    :cond_12
    if-eqz v2, :cond_13

    .line 370
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLinkMediaSmall()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 372
    :cond_13
    :goto_a
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_14

    .line 373
    iget-boolean p2, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 p3, p2, 0x1

    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 374
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 379
    :cond_14
    :goto_b
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->previewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz p1, :cond_15

    .line 380
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->updateLink()V

    :cond_15
    return-void
.end method

.method public updateLinkInvertMedia(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    return-void
.end method

.method public updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V
    .locals 12

    move-object v8, p0

    move-object v0, p1

    move-object v1, p2

    .line 266
    iget-boolean v2, v8, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    const/4 v9, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v9

    move-object v10, v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v10, :cond_2

    goto :goto_2

    .line 286
    :cond_2
    iput-object v9, v8, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 287
    iput-object v9, v8, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 272
    new-instance v11, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    iput-object v11, v8, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_4

    .line 274
    :cond_4
    new-instance v7, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v10, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    :goto_3
    move-object v4, v0

    move-object v0, v7

    move-object v1, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;J)V

    iput-object v7, v8, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 276
    :goto_4
    iget-object v0, v8, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 277
    iput-object v10, v8, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v10, :cond_7

    .line 279
    iget v0, v10, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iput v0, v8, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 280
    iget v0, v10, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    iput v0, v8, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    goto :goto_5

    .line 283
    :cond_6
    iput-object v9, v8, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    :cond_7
    :goto_5
    return-void
.end method
