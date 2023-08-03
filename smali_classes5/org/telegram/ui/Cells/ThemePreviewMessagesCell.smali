.class public Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
.super Landroid/widget/LinearLayout;
.source "ThemePreviewMessagesCell.java"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 57
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v3, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 48
    iput-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 58
    iput v2, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    .line 59
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object/from16 v4, p2

    .line 60
    iput-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const/4 v5, 0x1

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0xb

    .line 64
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v4, v7, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 66
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    add-int/lit16 v6, v6, -0xe10

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    const/16 v11, 0x103

    const-wide/16 v12, 0x1

    if-ne v2, v3, :cond_0

    .line 73
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 74
    sget v15, Lorg/telegram/messenger/R$string;->DoubleTapPreviewMessage:I

    const-string v7, "DoubleTapPreviewMessage"

    invoke-static {v7, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x3c

    .line 75
    iput v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 76
    iput-wide v12, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 77
    iput v11, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 78
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 79
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 80
    iput v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 81
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 82
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 83
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 84
    iput-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 86
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v6, v7, v14, v5, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 87
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v9, 0x1

    .line 88
    iput-wide v9, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 89
    sget v7, Lorg/telegram/messenger/R$string;->DoubleTapPreviewSenderName:I

    const-string v9, "DoubleTapPreviewSenderName"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->customName:Ljava/lang/String;

    .line 90
    sget v7, Lorg/telegram/messenger/R$drawable;->dino_pic:I

    invoke-static {v1, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->customAvatarDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 92
    :cond_0
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_1

    .line 94
    sget v12, Lorg/telegram/messenger/R$string;->FontSizePreviewReply:I

    const-string v13, "FontSizePreviewReply"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_1
    sget v12, Lorg/telegram/messenger/R$string;->NewThemePreviewReply:I

    const-string v13, "NewThemePreviewReply"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 99
    :goto_0
    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v13, "\ud83d\udc4b"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_2

    .line 101
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 102
    iput v12, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 103
    iput v3, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v3, 0x4ac13dde000018f8L    # 1.2901748243001788E52

    .line 104
    iput-wide v3, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 105
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v6, 0x3c

    .line 107
    iput v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v12, 0x1

    .line 108
    iput-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 109
    iput v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 110
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 111
    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 112
    iput v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 113
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 114
    iput-boolean v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 115
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 116
    iput-wide v9, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 117
    new-instance v13, Lorg/telegram/messenger/MessageObject;

    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v14, 0x0

    invoke-direct {v13, v12, v7, v5, v14}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 119
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_3

    .line 121
    sget v12, Lorg/telegram/messenger/R$string;->FontSizePreviewLine2:I

    const-string v15, "FontSizePreviewLine2"

    invoke-static {v15, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_3
    sget v12, Lorg/telegram/messenger/R$string;->NewThemePreviewLine3:I

    const-string v15, "NewThemePreviewLine3"

    invoke-static {v15, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 124
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2a

    .line 125
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 126
    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v14, v8, :cond_4

    if-eq v4, v8, :cond_4

    add-int/lit8 v12, v4, 0x1

    const-string v8, ""

    .line 128
    invoke-virtual {v15, v4, v12, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v14, 0x1

    .line 129
    invoke-virtual {v15, v14, v12, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 131
    iput v14, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v4, v14

    sub-int/2addr v4, v5

    .line 132
    iput v4, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string v4, "https://telegram.org"

    .line 133
    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 134
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 139
    :goto_1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v8, "\ud83d\ude0e"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 141
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 142
    iput v4, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    const/4 v4, 0x2

    .line 143
    iput v4, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-wide v14, 0x4a913c1500001b0eL    # 1.6120662781798343E51

    .line 144
    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 145
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit16 v6, v6, 0x3c0

    .line 147
    iput v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v14, 0x1

    .line 148
    iput-wide v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 149
    iput v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 150
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 151
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    move-object v8, v13

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iput-wide v12, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 152
    iput v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 153
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 154
    iput-boolean v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 155
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 156
    iput-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 157
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v9, 0x0

    invoke-direct {v6, v4, v7, v5, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 158
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    const-wide/16 v9, 0x1

    .line 159
    iput-wide v9, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 161
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    if-nez v2, :cond_6

    .line 163
    sget v7, Lorg/telegram/messenger/R$string;->FontSizePreviewLine1:I

    const-string v9, "FontSizePreviewLine1"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_2

    .line 165
    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->NewThemePreviewLine1:I

    const-string v9, "NewThemePreviewLine1"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 167
    :goto_2
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/16 v9, 0x1

    .line 168
    iput-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v3, 0x109

    .line 169
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 170
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 171
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 172
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v7, 0x5

    .line 173
    iput v7, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 174
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v3, 0x0

    .line 175
    iput-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 176
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 177
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 178
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v7, v9, v4, v5, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    if-nez v2, :cond_7

    .line 180
    sget v3, Lorg/telegram/messenger/R$string;->FontSizePreviewName:I

    const-string v4, "FontSizePreviewName"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    goto :goto_3

    .line 182
    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->NewThemePreviewName:I

    const-string v4, "NewThemePreviewName"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    :goto_3
    const-wide/16 v3, 0x1

    .line 184
    iput-wide v3, v7, Lorg/telegram/messenger/MessageObject;->eventId:J

    .line 185
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 186
    iput-object v8, v7, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    :goto_4
    const/4 v3, 0x0

    .line 189
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v8, v4

    if-ge v3, v8, :cond_b

    .line 190
    new-instance v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-direct {v8, v0, v1, v1, v2}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;Landroid/content/Context;Landroid/content/Context;I)V

    aput-object v8, v4, v3

    .line 254
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v4, v4, v3

    new-instance v8, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$2;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 257
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v8, v4, v3

    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    move v10, v5

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 258
    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    if-nez v3, :cond_9

    move-object v4, v7

    goto :goto_7

    :cond_9
    move-object v4, v6

    :goto_7
    if-nez v4, :cond_a

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_8

    .line 263
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v8, v8, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v4, v10, v11, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 264
    iget-object v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    aget-object v4, v4, v3

    const/4 v8, -0x2

    const/4 v12, -0x1

    invoke-static {v12, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 380
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 381
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .line 274
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->cells:[Lorg/telegram/ui/Cells/ChatMessageCell;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 276
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 362
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v0, :cond_1

    .line 365
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 366
    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 282
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->wallpaperLoadTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    .line 286
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 287
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_2

    .line 291
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 292
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 294
    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
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

    .line 298
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

    .line 303
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

    .line 311
    :cond_7
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 312
    instance-of v7, v5, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_a

    instance-of v7, v5, Landroid/graphics/drawable/GradientDrawable;

    if-nez v7, :cond_a

    instance-of v7, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v7, :cond_8

    goto/16 :goto_5

    .line 320
    :cond_8
    instance-of v7, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_c

    .line 321
    move-object v7, v5

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 322
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 323
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v6, v7, :cond_9

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40000000    # 2.0f

    .line 325
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v6

    .line 326
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 327
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

    .line 329
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 330
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    .line 331
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 332
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 333
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 334
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/2addr v9, v4

    sub-int/2addr v6, v7

    .line 336
    div-int/2addr v6, v4

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 338
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v8, v9

    add-int/2addr v7, v6

    .line 339
    invoke-virtual {v5, v9, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    :goto_4
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 313
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v1, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    instance-of v4, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v4, :cond_b

    .line 315
    check-cast v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    .line 316
    invoke-virtual {v5, p1, p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_6

    .line 318
    :cond_b
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    :goto_6
    if-nez v3, :cond_e

    .line 344
    iget-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_e

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v4, :cond_d

    .line 346
    invoke-interface {v4}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 347
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 349
    :cond_d
    iput-object v2, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 350
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 353
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 372
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 373
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 393
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 394
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
