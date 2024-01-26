.class public Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
.super Landroid/widget/LinearLayout;
.source "ThemePreviewMessagesCell.java"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private final cancelProgress:Ljava/lang/Runnable;

.field private cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

.field public customAnimation:Z

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private overrideDrawable:Landroid/graphics/drawable/Drawable;

.field private final overrideDrawableUpdate:Lorg/telegram/ui/Components/AnimatedFloat;

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

    .line 76
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 80
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move-wide/from16 v11, p4

    .line 85
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    const/4 v13, 0x2

    new-array v0, v13, [Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 58
    iput-object v0, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v14, -0x1

    .line 65
    iput v14, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    .line 66
    new-instance v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    iput-object v0, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cancelProgress:Ljava/lang/Runnable;

    .line 472
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawableUpdate:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 86
    iput v10, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    .line 87
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object/from16 v0, p2

    .line 88
    iput-object v0, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v15, 0x0

    .line 90
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const/4 v7, 0x1

    .line 91
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0xb

    .line 92
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v8, v15, v1, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v6, p6

    invoke-static {v9, v0, v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0xe10

    const/16 v1, 0x103

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x1

    const/4 v4, 0x3

    if-ne v10, v4, :cond_9

    cmp-long v4, v11, v2

    if-gez v4, :cond_0

    move/from16 v16, v7

    goto :goto_0

    :cond_0
    move/from16 v16, v15

    .line 103
    :goto_0
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-eqz v16, :cond_1

    .line 104
    sget v17, Lorg/telegram/messenger/R$string;->ChannelColorPreview:I

    goto :goto_1

    :cond_1
    sget v17, Lorg/telegram/messenger/R$string;->UserColorPreview:I

    :goto_1
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 105
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 106
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/2addr v3, v7

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    if-nez v4, :cond_2

    .line 108
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 109
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_2

    .line 111
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 112
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v7, v11

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 114
    :goto_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 115
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v4, :cond_3

    .line 117
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 118
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 119
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 120
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_3

    .line 122
    :cond_3
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 123
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v7, v11

    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 124
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 125
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 127
    :goto_3
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v16, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->ChannelColorPreviewReply:I

    goto :goto_4

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->UserColorPreviewReply:I

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 128
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 129
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 130
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    const-string v3, "https://telegram.org/"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    .line 131
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/2addr v3, v13

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 132
    sget v3, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 133
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    if-eqz v16, :cond_5

    .line 134
    sget v3, Lorg/telegram/messenger/R$string;->ChannelColorPreviewLinkTitle:I

    goto :goto_5

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->UserColorPreviewLinkTitle:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    .line 135
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    if-eqz v16, :cond_6

    .line 136
    sget v3, Lorg/telegram/messenger/R$string;->ChannelColorPreviewLinkDescription:I

    goto :goto_6

    :cond_6
    sget v3, Lorg/telegram/messenger/R$string;->UserColorPreviewLinkDescription:I

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3c

    .line 137
    iput v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 138
    iput-wide v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 139
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    if-nez v4, :cond_7

    .line 141
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 142
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_7

    .line 144
    :cond_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v1, v11

    .line 145
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_7
    const/4 v0, 0x1

    .line 147
    iput v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 148
    iput-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_8

    .line 150
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v1, 0x0

    .line 151
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_8

    .line 153
    :cond_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v1, v11

    .line 154
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 157
    :goto_8
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v14, v2, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 158
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->forceAvatar:Z

    .line 159
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 160
    iput-wide v5, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    move-object v8, v0

    goto :goto_9

    :cond_9
    const/4 v2, 0x5

    if-ne v10, v13, :cond_a

    .line 162
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 163
    sget v4, Lorg/telegram/messenger/R$string;->DoubleTapPreviewMessage:I

    const-string v7, "DoubleTapPreviewMessage"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3c

    .line 164
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 165
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 166
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 167
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 168
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v0, 0x1

    .line 169
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 170
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 171
    iput-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 172
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v7, 0x0

    .line 173
    iput-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 175
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v1, v4, v3, v0, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 176
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 177
    iput-wide v5, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 178
    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapPreviewSenderName:I

    const-string v3, "DoubleTapPreviewSenderName"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->customName:Ljava/lang/String;

    .line 179
    sget v0, Lorg/telegram/messenger/R$drawable;->dino_pic:I

    invoke-static {v9, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->customAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iput v2, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    const-wide/16 v2, 0x0

    .line 181
    iput-wide v2, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    move-object v8, v1

    :goto_9
    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_e

    .line 183
    :cond_a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v10, :cond_b

    .line 185
    sget v4, Lorg/telegram/messenger/R$string;->FontSizePreviewReply:I

    const-string v7, "FontSizePreviewReply"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_a

    .line 187
    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->NewThemePreviewReply:I

    const-string v7, "NewThemePreviewReply"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 190
    :goto_a
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v7, "\ud83d\udc4b"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_c

    .line 192
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 193
    iput v4, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 194
    iput v13, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v11, 0x4ac13dde000018f8L    # 1.2901748243001788E52

    .line 195
    iput-wide v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 196
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v0, 0x3c

    .line 198
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 199
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 200
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 201
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 202
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iput-wide v11, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v7, 0x1

    .line 203
    iput v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 204
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 205
    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 206
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x0

    .line 207
    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 208
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v8, v11, v3, v7, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 210
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v10, :cond_d

    .line 212
    sget v7, Lorg/telegram/messenger/R$string;->FontSizePreviewLine2:I

    const-string v11, "FontSizePreviewLine2"

    invoke-static {v11, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_b

    .line 214
    :cond_d
    sget v7, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v11, "NewThemePreviewLine3"

    invoke-static {v11, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2a

    .line 216
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 217
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v14, v12, :cond_e

    if-eq v7, v12, :cond_e

    add-int/lit8 v12, v7, 0x1

    const-string v2, ""

    .line 219
    invoke-virtual {v11, v7, v12, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v14, 0x1

    .line 220
    invoke-virtual {v11, v14, v12, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 222
    iput v14, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v7, v14

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 223
    iput v7, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v7, "https://telegram.org"

    .line 224
    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 225
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 230
    :goto_b
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v7, "\ud83d\ude0e"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    .line 232
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 233
    iput v2, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 234
    iput v13, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v11, 0x4a913c1500001b0eL    # 1.6120662781798343E51

    .line 235
    iput-wide v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 236
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit16 v0, v0, 0x3c0

    .line 238
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 239
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 240
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 241
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 242
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v0, 0x1

    .line 243
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 244
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 245
    iput-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 246
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v11, 0x0

    .line 247
    iput-wide v11, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 248
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v1, v2, v3, v0, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 249
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const/4 v0, 0x5

    .line 250
    iput v0, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    .line 251
    iput-wide v11, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    .line 252
    iput-wide v5, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 254
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v10, :cond_10

    .line 256
    sget v2, Lorg/telegram/messenger/R$string;->FontSizePreviewLine1:I

    const-string v3, "FontSizePreviewLine1"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_c

    .line 258
    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v3, "NewThemePreviewLine1"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 260
    :goto_c
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 261
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x109

    .line 262
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 263
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v2, 0x1

    .line 264
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 265
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 266
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v3, 0x5

    .line 267
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 268
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 269
    iput-boolean v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 270
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 271
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 272
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v7, 0x1

    invoke-direct {v2, v3, v0, v7, v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    if-nez v10, :cond_11

    goto :goto_d

    .line 276
    :cond_11
    sget v0, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v3, "NewThemePreviewName"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    .line 278
    :goto_d
    iput-wide v5, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 279
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 280
    iput-object v8, v2, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object v8, v1

    move-object v11, v2

    :goto_e
    move-object/from16 v12, p0

    move v14, v15

    .line 283
    :goto_f
    iget-object v6, v12, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v0, v6

    if-ge v14, v0, :cond_15

    .line 284
    new-instance v16, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v15, 0x0

    move-object/from16 v5, p6

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move v15, v7

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;Landroid/content/Context;ZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;I)V

    aput-object v16, v18, v14

    .line 378
    iget-object v0, v12, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v0, v0, v14

    new-instance v1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 421
    iget-object v0, v12, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v1, v0, v14

    if-ne v10, v13, :cond_12

    move v7, v15

    goto :goto_10

    :cond_12
    const/4 v7, 0x0

    :goto_10
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 422
    aget-object v0, v0, v14

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    if-nez v14, :cond_13

    move-object v0, v11

    goto :goto_11

    :cond_13
    move-object v0, v8

    :goto_11
    if-nez v0, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto :goto_12

    .line 427
    :cond_14
    iget-object v1, v12, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v1, v1, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 428
    iget-object v0, v12, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v0, v0, v14

    const/4 v1, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move v7, v15

    move v15, v3

    goto :goto_f

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->allowLoadingOnTouch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cancelProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method private allowLoadingOnTouch()Z
    .locals 2

    .line 555
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

    .line 67
    iput v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->progress:I

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 69
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 70
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

    .line 584
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

    .line 585
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .line 438
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 440
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 462
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 560
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 563
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v0, :cond_1

    .line 566
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 567
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 569
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 570
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    :goto_0
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->wallpaperLoadTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    .line 480
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_5

    .line 481
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->customAnimation:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 484
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_4

    .line 485
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 486
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_2

    .line 482
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 488
    :cond_4
    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawableUpdate:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 491
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->customAnimation:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawableUpdate:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getThemeAnimationValue()F

    move-result v0

    :goto_3
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    const/4 v6, 0x2

    if-ge v5, v6, :cond_13

    if-nez v5, :cond_7

    .line 493
    iget-object v7, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_5
    if-nez v7, :cond_8

    goto/16 :goto_a

    :cond_8
    if-ne v5, v3, :cond_a

    .line 498
    iget-object v8, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->customAnimation:Z

    if-eqz v8, :cond_a

    :cond_9
    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    goto :goto_6

    :cond_a
    const/16 v8, 0xff

    :goto_6
    if-gtz v8, :cond_b

    goto/16 :goto_a

    .line 506
    :cond_b
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 507
    instance-of v8, v7, Landroid/graphics/drawable/ColorDrawable;

    if-nez v8, :cond_f

    instance-of v8, v7, Landroid/graphics/drawable/GradientDrawable;

    if-nez v8, :cond_f

    instance-of v8, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v8, :cond_c

    goto/16 :goto_8

    .line 515
    :cond_c
    instance-of v8, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_e

    .line 516
    move-object v8, v7

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 517
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 518
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v8, v9, :cond_d

    .line 519
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v6, 0x40000000    # 2.0f

    .line 520
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v8

    .line 521
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 522
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    invoke-virtual {v7, v4, v4, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    .line 524
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 525
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v8

    .line 526
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 527
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 528
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 529
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    .line 530
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v10

    div-int/2addr v11, v6

    sub-int/2addr v8, v9

    .line 531
    div-int/2addr v8, v6

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v10, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v10, v11

    add-int/2addr v9, v8

    .line 534
    invoke-virtual {v7, v11, v8, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 536
    :goto_7
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 539
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    invoke-static {p1, v7, v6, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_9

    .line 508
    :cond_f
    :goto_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v4, v4, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 509
    instance-of v6, v7, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v6, :cond_10

    .line 510
    check-cast v7, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    .line 511
    invoke-virtual {v7, p1, p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_9

    .line 513
    :cond_10
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_9
    if-nez v5, :cond_12

    .line 541
    iget-object v6, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_12

    cmpl-float v6, v0, v1

    if-ltz v6, :cond_12

    .line 542
    iget-object v6, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v6, :cond_11

    .line 543
    invoke-interface {v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 544
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 546
    :cond_11
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 547
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    :cond_12
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 550
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 576
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

    .line 577
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 597
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

    .line 598
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverrideBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 450
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz p1, :cond_1

    .line 451
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    .line 455
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->overrideDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
