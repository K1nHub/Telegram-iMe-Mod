.class public Lorg/telegram/ui/MessageSeenView;
.super Landroid/widget/FrameLayout;
.source "MessageSeenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MessageSeenView$UserCell;
    }
.end annotation


# instance fields
.field avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field currentAccount:I

.field flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field iconView:Landroid/widget/ImageView;

.field ignoreLayout:Z

.field isVoice:Z

.field peerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EoLbAO35D_lPVd5oyTw9w2LKO4Q(Lorg/telegram/ui/MessageSeenView;JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/MessageSeenView;->lambda$new$5(JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NHbP4r5J0vqDVU06nKLEdf8DBjg(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/MessageSeenView;->lambda$new$3(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1COlbe-k8CJns7tlDPXzLCdOWo(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MessageSeenView;->lambda$new$2(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9z4qiftKK6RFl7PU2Hlt4jIO7I(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/MessageSeenView;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iha4SndK64-z4cTAS0gkHMjRhpU(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MessageSeenView;->lambda$new$0(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vb6QcjMDj9ZyvwV_1yO_d6a5qIU(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/MessageSeenView;->lambda$new$1(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 11

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    .line 61
    iput p2, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    .line 62
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    .line 63
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, 0x0

    const-string v4, "actionBarDefaultSubmenuBackground"

    const-string v5, "listSelectorSDK21"

    .line 64
    invoke-virtual {v0, v4, v5, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x10

    .line 70
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x3e

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/16 v5, 0x13

    const/16 v6, 0x28

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v0, p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0xb

    .line 77
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v3, 0x38

    const/4 v4, -0x1

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 83
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;-><init>()V

    .line 84
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->msg_id:I

    .line 85
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 87
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/MessageSeenView;->iconView:Landroid/widget/ImageView;

    const/16 v3, 0x18

    const/16 v4, 0x18

    const/16 v5, 0x13

    const/16 v6, 0xb

    .line 88
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-boolean v1, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_played:I

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_seen:I

    :goto_2
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 90
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const-wide/16 v3, 0x0

    .line 96
    iget-object p1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_3

    .line 97
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :cond_3
    move-wide v7, v3

    .line 100
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda5;

    move-object v5, p3

    move-object v6, p0

    move v9, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/MessageSeenView;JILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const-string p1, "dialogButtonSelector"

    .line 175
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x6

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 138
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 141
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 142
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    return-void
.end method

.method private synthetic lambda$new$1(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 136
    new-instance p5, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 156
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 159
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 160
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    return-void
.end method

.method private synthetic lambda$new$3(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 154
    new-instance p5, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda0;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 9

    if-nez p1, :cond_6

    .line 102
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 107
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 108
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_1

    .line 109
    check-cast v5, Ljava/lang/Long;

    .line 110
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, p3, v6

    if-nez v8, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    .line 114
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 128
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    goto :goto_3

    .line 130
    :cond_4
    invoke-static {p6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 131
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 132
    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 133
    iput v3, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 134
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 135
    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 136
    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p5, v0, v1}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    .line 152
    :cond_5
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 153
    iget-wide p2, p6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:J

    .line 154
    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p5, v0, v1}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    .line 172
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    :goto_3
    return-void
.end method

.method private synthetic lambda$new$5(JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 100
    new-instance v8, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateView()V
    .locals 7

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 216
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 217
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_2

    .line 219
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    .line 224
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    .line 227
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 230
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_5

    .line 236
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NobodyViewed:I

    const-string v2, "NobodyViewed"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_5

    .line 239
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    if-eqz v1, :cond_7

    const-string v1, "MessagePlayed"

    goto :goto_4

    :cond_7
    const-string v1, "MessageSeen"

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 242
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public createListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 248
    new-instance v0, Lorg/telegram/ui/MessageSeenView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/MessageSeenView$1;-><init>(Lorg/telegram/ui/MessageSeenView;Landroid/content/Context;)V

    .line 261
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 262
    new-instance v1, Lorg/telegram/ui/MessageSeenView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSeenView$2;-><init>(Lorg/telegram/ui/MessageSeenView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 274
    new-instance v1, Lorg/telegram/ui/MessageSeenView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSeenView$3;-><init>(Lorg/telegram/ui/MessageSeenView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v3, 0x28

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iput-boolean v2, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    .line 210
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
