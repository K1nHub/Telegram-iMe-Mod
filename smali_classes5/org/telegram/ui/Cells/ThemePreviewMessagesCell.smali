.class public Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
.super Landroid/widget/LinearLayout;
.source "ThemePreviewMessagesCell.java"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private final cancelProgress:Ljava/lang/Runnable;

.field private cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private progress:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$gRiES5fUHMAYOnf3s0tkpSKSsNk(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 72
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    .line 77
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v5, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 54
    iput-object v6, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, -0x1

    .line 61
    iput v6, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    .line 62
    new-instance v7, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cancelProgress:Ljava/lang/Runnable;

    .line 78
    iput v2, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    .line 79
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object/from16 v7, p2

    .line 80
    iput-object v7, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v7, 0x0

    .line 82
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const/4 v8, 0x1

    .line 83
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0xb

    .line 84
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v0, v7, v10, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    sget v9, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v9, v9

    add-int/lit16 v9, v9, -0xe10

    const/16 v11, 0x103

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x1

    const/4 v10, 0x3

    if-ne v2, v10, :cond_9

    cmp-long v10, v3, v12

    if-gez v10, :cond_0

    move/from16 v16, v8

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    .line 95
    :goto_0
    new-instance v6, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .line 96
    sget v17, Lorg/telegram/messenger/R$string;->UserColorPreviewTitle:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x5

    .line 97
    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-eqz v16, :cond_1

    .line 100
    sget v12, Lorg/telegram/messenger/R$string;->ChannelColorPreview:I

    goto :goto_1

    :cond_1
    sget v12, Lorg/telegram/messenger/R$string;->UserColorPreview:I

    :goto_1
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 101
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v12, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 102
    iget v13, v12, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/2addr v13, v8

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    if-nez v10, :cond_2

    .line 104
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 105
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_2

    .line 107
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v7, v12, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 108
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v12, v3

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 110
    :goto_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 111
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v10, :cond_3

    .line 113
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 114
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 115
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 116
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_3

    .line 118
    :cond_3
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 119
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v12, v3

    iput-wide v12, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 120
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 121
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 123
    :goto_3
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v16, :cond_4

    sget v8, Lorg/telegram/messenger/R$string;->ChannelColorPreviewReply:I

    goto :goto_4

    :cond_4
    sget v8, Lorg/telegram/messenger/R$string;->UserColorPreviewReply:I

    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 124
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 125
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 126
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string v8, "https://telegram.org/"

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    .line 127
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/2addr v8, v5

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 128
    sget v8, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 129
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    if-eqz v16, :cond_5

    .line 130
    sget v8, Lorg/telegram/messenger/R$string;->ChannelColorPreviewLinkTitle:I

    goto :goto_5

    :cond_5
    sget v8, Lorg/telegram/messenger/R$string;->UserColorPreviewLinkTitle:I

    :goto_5
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    .line 131
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    if-eqz v16, :cond_6

    .line 132
    sget v8, Lorg/telegram/messenger/R$string;->ChannelColorPreviewLinkDescription:I

    goto :goto_6

    :cond_6
    sget v8, Lorg/telegram/messenger/R$string;->UserColorPreviewLinkDescription:I

    :goto_6
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x3c

    .line 133
    iput v9, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 134
    iput-wide v14, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 135
    iput v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    if-nez v10, :cond_7

    .line 137
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 138
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_7

    .line 140
    :cond_7
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v8, v3

    .line 141
    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_7
    const/4 v7, 0x1

    .line 143
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v7, 0x0

    .line 144
    iput-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v10, :cond_8

    .line 146
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v7, 0x0

    .line 147
    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_8

    .line 149
    :cond_8
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v3, v3

    .line 150
    iput-wide v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 153
    :goto_8
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v4, v6, v8, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 154
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z

    .line 155
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 156
    iput-wide v14, v3, Lorg/telegram/messenger/MessageObject;->eventId:J

    goto :goto_9

    :cond_9
    const/4 v3, 0x5

    if-ne v2, v5, :cond_a

    .line 158
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 159
    sget v6, Lorg/telegram/messenger/R$string;->DoubleTapPreviewMessage:I

    const-string v7, "DoubleTapPreviewMessage"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x3c

    .line 160
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 161
    iput-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 162
    iput v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 163
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 164
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v6, 0x1

    .line 165
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 166
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v7, 0x0

    .line 167
    iput-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 168
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v9, 0x0

    .line 169
    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 171
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v8, v9, v4, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 172
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 173
    iput-wide v14, v8, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 174
    sget v4, Lorg/telegram/messenger/R$string;->DoubleTapPreviewSenderName:I

    const-string v6, "DoubleTapPreviewSenderName"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lorg/telegram/messenger/MessageObject;->customName:Ljava/lang/String;

    .line 175
    sget v4, Lorg/telegram/messenger/R$drawable;->dino_pic:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v8, Lorg/telegram/messenger/MessageObject;->customAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    iput v3, v8, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    const-wide/16 v3, 0x0

    .line 177
    iput-wide v3, v8, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    move-object v3, v8

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 179
    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_b

    .line 181
    sget v6, Lorg/telegram/messenger/R$string;->FontSizePreviewReply:I

    const-string v7, "FontSizePreviewReply"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_a

    .line 183
    :cond_b
    sget v6, Lorg/telegram/messenger/R$string;->NewThemePreviewReply:I

    const-string v7, "NewThemePreviewReply"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 186
    :goto_a
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v7, "\ud83d\udc4b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_c

    .line 188
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 189
    iput v6, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 190
    iput v5, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v12, 0x4ac13dde000018f8L    # 1.2901748243001788E52

    .line 191
    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 192
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v6, v9, 0x3c

    .line 194
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 195
    iput-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 196
    iput v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 197
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 198
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v7, 0x1

    .line 199
    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 200
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 201
    iput-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 202
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v12, 0x0

    .line 203
    iput-wide v12, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 204
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x0

    invoke-direct {v8, v10, v4, v7, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 206
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_d

    .line 208
    sget v7, Lorg/telegram/messenger/R$string;->FontSizePreviewLine2:I

    const-string v10, "FontSizePreviewLine2"

    invoke-static {v10, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_b

    .line 210
    :cond_d
    sget v7, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v10, "NewThemePreviewLine3"

    invoke-static {v10, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2a

    .line 212
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 213
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v13, v12, :cond_e

    if-eq v7, v12, :cond_e

    add-int/lit8 v12, v7, 0x1

    const-string v3, ""

    .line 215
    invoke-virtual {v10, v7, v12, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v13, 0x1

    .line 216
    invoke-virtual {v10, v13, v12, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 218
    iput v13, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v7, v13

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 219
    iput v7, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v7, "https://telegram.org"

    .line 220
    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 221
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 226
    :goto_b
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v7, "\ud83d\ude0e"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_f

    .line 228
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 229
    iput v3, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 230
    iput v5, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v12, 0x4a913c1500001b0eL    # 1.6120662781798343E51

    .line 231
    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 232
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit16 v9, v9, 0x3c0

    .line 234
    iput v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 235
    iput-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 236
    iput v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 237
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 238
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    iput-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v3, 0x1

    .line 239
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 240
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 241
    iput-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 242
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v9, 0x0

    .line 243
    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 244
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x0

    invoke-direct {v7, v11, v4, v3, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 245
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const/4 v3, 0x5

    .line 246
    iput v3, v7, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    .line 247
    iput-wide v9, v7, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    .line 248
    iput-wide v14, v7, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 250
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_10

    .line 252
    sget v4, Lorg/telegram/messenger/R$string;->FontSizePreviewLine1:I

    const-string v9, "FontSizePreviewLine1"

    invoke-static {v9, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_c

    .line 254
    :cond_10
    sget v4, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v9, "NewThemePreviewLine1"

    invoke-static {v9, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 256
    :goto_c
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 257
    iput-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v4, 0x109

    .line 258
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 259
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v4, 0x1

    .line 260
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 261
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 262
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v6, 0x5

    .line 263
    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 264
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v4, 0x0

    .line 265
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 266
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 267
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    iput-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 268
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v10, 0x1

    invoke-direct {v6, v9, v3, v10, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    if-nez v2, :cond_11

    goto :goto_d

    .line 272
    :cond_11
    sget v3, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v4, "NewThemePreviewName"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 274
    :goto_d
    iput-wide v14, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 275
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 276
    iput-object v8, v6, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object v3, v7

    :goto_e
    const/4 v7, 0x0

    .line 279
    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v8, v4

    if-ge v7, v8, :cond_15

    .line 280
    new-instance v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-direct {v8, v0, v1, v1, v2}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;Landroid/content/Context;Landroid/content/Context;I)V

    aput-object v8, v4, v7

    .line 374
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v4, v4, v7

    new-instance v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 417
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v8, v4, v7

    if-ne v2, v5, :cond_12

    const/4 v9, 0x1

    goto :goto_10

    :cond_12
    const/4 v9, 0x0

    :goto_10
    iput-boolean v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 418
    aget-object v4, v4, v7

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    if-nez v7, :cond_13

    move-object v4, v6

    goto :goto_11

    :cond_13
    move-object v4, v3

    :goto_11
    if-nez v4, :cond_14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_12

    .line 423
    :cond_14
    iget-object v9, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v9, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v10, v11, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 424
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v4, v4, v7

    const/4 v9, -0x2

    const/4 v12, -0x1

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->allowLoadingOnTouch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)I
    .locals 0

    .line 42
    iget p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;I)I
    .locals 0

    .line 42
    iput p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cancelProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method private allowLoadingOnTouch()Z
    .locals 2

    .line 518
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 65
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 66
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 544
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->allowLoadingOnTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 545
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .line 434
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x0

    .line 435
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 436
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 523
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 526
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v0, :cond_1

    .line 529
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 530
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 442
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->wallpaperLoadTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    .line 446
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 447
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_0

    .line 450
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_2

    .line 451
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 452
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 454
    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getThemeAnimationValue()F

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    if-nez v3, :cond_4

    .line 458
    iget-object v5, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-nez v5, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 463
    iget-object v7, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v7, :cond_6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    goto :goto_3

    :cond_6
    const/16 v7, 0xff

    :goto_3
    if-gtz v7, :cond_7

    goto/16 :goto_7

    .line 471
    :cond_7
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 472
    instance-of v7, v5, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_a

    instance-of v7, v5, Landroid/graphics/drawable/GradientDrawable;

    if-nez v7, :cond_a

    instance-of v7, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v7, :cond_8

    goto/16 :goto_5

    .line 480
    :cond_8
    instance-of v7, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_c

    .line 481
    move-object v7, v5

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 482
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 483
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v6, v7, :cond_9

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40000000    # 2.0f

    .line 485
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v6

    .line 486
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 487
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v5, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 489
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 490
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    .line 491
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 492
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 493
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 494
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 495
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/2addr v9, v4

    sub-int/2addr v6, v7

    .line 496
    div-int/2addr v6, v4

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v8, v9

    add-int/2addr v7, v6

    .line 499
    invoke-virtual {v5, v9, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    :goto_4
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 473
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v1, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    instance-of v4, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v4, :cond_b

    .line 475
    check-cast v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    .line 476
    invoke-virtual {v5, p1, p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_6

    .line 478
    :cond_b
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    :goto_6
    if-nez v3, :cond_e

    .line 504
    iget-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_e

    .line 505
    iget-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v4, :cond_d

    .line 506
    invoke-interface {v4}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 507
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 509
    :cond_d
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 513
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 536
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->allowLoadingOnTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 537
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 557
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->allowLoadingOnTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 558
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
