.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "ChatAvatarContainer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field public allowShorterStatus:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentAccount:I

.field private currentConnectionState:I

.field currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

.field private emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private isOnline:[Z

.field private largerWidth:I

.field private lastSubtitle:Ljava/lang/CharSequence;

.field private lastSubtitleColorKey:Ljava/lang/String;

.field private lastWidth:I

.field private leftPadding:I

.field private occupyStatusBar:Z

.field private onlineCount:I

.field private overrideSubtitleColor:Ljava/lang/Integer;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private premiumStarDrawable:Landroid/graphics/drawable/Drawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightDrawableContentDescription:Ljava/lang/String;

.field private rightDrawableIsScamOrVerified:Z

.field private secretChatTimer:Z

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

.field public statusMadeShorter:[Z

.field private subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleAnimation:Landroid/animation/AnimatorSet;

.field private titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$3yrkLmDGaFzenqli9rFXDHFdERw(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$MQTDgK0tZQODM1O4M4nJnYKznzc(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PegLVVFCN4wtiyh3XCKOFzpPSno(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWBfJaPsGMDCu277mGoUm_bqJ0U(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_s4qf9F1BVpv0VUHYIzymoxNX4(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v1, v0, [Lorg/telegram/ui/Components/StatusDrawable;

    .line 77
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    .line 78
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 79
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    const/16 v2, 0x8

    .line 81
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/4 v3, -0x1

    .line 84
    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    .line 85
    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    new-array v4, v1, [Z

    .line 90
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    new-array v4, v1, [Z

    .line 91
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    .line 95
    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v3, 0x0

    .line 104
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    .line 556
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    const/4 v4, 0x0

    .line 557
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    .line 120
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 121
    instance-of v4, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_1

    .line 122
    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 125
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5, v1, v3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 126
    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-direct {v6, p0, p1, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Z)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x2

    if-nez v4, :cond_3

    .line 140
    instance-of v4, p2, Lorg/telegram/ui/TopicsFragment;

    if-eqz v4, :cond_5

    .line 141
    :cond_3
    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v4, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result p2

    if-ne p2, v6, :cond_5

    .line 143
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrProfilePicture:I

    const-string v7, "AccDescrProfilePicture"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v4, 0x15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 148
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v5, :cond_6

    .line 150
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_6
    new-instance p2, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 174
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "actionBarDefaultTitle"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 176
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x12

    invoke-virtual {p2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 177
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 178
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 180
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setCanHideRightDrawable(Z)V

    .line 181
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 182
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {p2, v3, v0, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance p2, Lorg/telegram/ui/Components/ChatAvatarContainer$3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer$3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 202
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "actionBarDefaultSubtitle"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 204
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {p2, v3, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x5

    if-eqz p2, :cond_8

    .line 211
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 212
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {p2, v7, v0, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 213
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 215
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 216
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 217
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v0, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v0, p1, p4}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 220
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz p1, :cond_7

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$string;->SetTimer:I

    const-string p3, "SetTimer"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$string;->AccAutoDeleteTimer:I

    const-string p3, "AccAutoDeleteTimer"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result p1

    if-nez p1, :cond_c

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-nez p1, :cond_a

    .line 238
    new-instance p1, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 242
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance p3, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {p3, v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>(Z)V

    aput-object p3, p2, v3

    .line 243
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance p3, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {p3, v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>(Z)V

    aput-object p3, p2, v1

    .line 244
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance p3, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {p3, v1}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>(Z)V

    aput-object p3, p2, v6

    .line 245
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance p3, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {p3, v3, p4}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object p3, p2, v4

    .line 246
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    const/4 p3, 0x4

    new-instance p4, Lorg/telegram/ui/Components/RoundStatusDrawable;

    invoke-direct {p4, v1}, Lorg/telegram/ui/Components/RoundStatusDrawable;-><init>(Z)V

    aput-object p4, p2, p3

    .line 247
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance p3, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;

    invoke-direct {p3, v1}, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;-><init>(Z)V

    aput-object p3, p2, v5

    const/4 p2, 0x0

    .line 248
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length p4, p3

    if-ge p2, p4, :cond_c

    .line 249
    aget-object p3, p3, p2

    if-eqz p1, :cond_b

    const/4 p4, 0x1

    goto :goto_3

    :cond_b
    const/4 p4, 0x0

    :goto_3
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/StatusDrawable;->setIsChat(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 253
    :cond_c
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p3, 0x18

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method private fadeOutToLessWidth(I)V
    .locals 7

    .line 431
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 435
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "actionBarDefaultTitle"

    .line 436
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableOutside()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v5, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "actionBarDefaultSubtitle"

    .line 454
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 455
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 466
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 468
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$fadeOutToLessWidth$3()V
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$fadeOutToLessWidth$4()V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onAvatarClick()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    .line 223
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz p2, :cond_0

    .line 224
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openSetTimer()Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    return-void
.end method

.method private setTypingAnimation(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 676
    :try_start_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    const-string v3, "chat_status"

    if-ne p1, v2, :cond_0

    .line 678
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v4, v4, p1

    const-string v5, "**oo**"

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v2, v2, p1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 680
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v1, v1, p1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 684
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 686
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v1, v1, p1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 687
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    if-ne v0, p1, :cond_1

    .line 689
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StatusDrawable;->start()V

    goto :goto_2

    .line 691
    :cond_1
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 695
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 698
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 701
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 702
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    return-void
.end method

.method private updateCurrentConnectionState()V
    .locals 3

    .line 1065
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1066
    sget v0, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v2, "WaitingForNetwork"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1068
    sget v0, Lorg/telegram/messenger/R$string;->Connecting:I

    const-string v2, "Connecting"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1070
    sget v0, Lorg/telegram/messenger/R$string;->Updating:I

    const-string v2, "Updating"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1072
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingToProxy:I

    const-string v2, "ConnectingToProxy"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 1076
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1077
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1079
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_1

    .line 1080
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1081
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1086
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1089
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1091
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_1

    .line 1093
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "actionBarDefaultSubtitle"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public checkAndUpdateAvatar()V
    .locals 7

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 964
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 968
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_7

    .line 972
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 974
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_7

    .line 978
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_2

    .line 981
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_7

    .line 983
    iget-object v1, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZI)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_7

    .line 987
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 988
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v2, :cond_5

    .line 990
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 991
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 992
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 993
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v3, v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 995
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 997
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    goto :goto_1

    :cond_6
    const/16 v0, 0x15

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1046
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    .line 1047
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 1048
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    if-eq p2, p1, :cond_3

    .line 1049
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1050
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    goto :goto_0

    .line 1052
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_3

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1056
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_2

    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1059
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getLastSubtitleColorKey()Ljava/lang/String;
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 1

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object v0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideTimeItem(Z)V
    .locals 3

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$6;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 532
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1026
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 1028
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1030
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1031
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    :cond_0
    return-void
.end method

.method protected onAvatarClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1037
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 1039
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1040
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1104
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 1105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\n"

    .line 1108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1112
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    sget v2, Lorg/telegram/messenger/R$string;->OpenProfile:I

    const-string v3, "OpenProfile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 473
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    const/16 p2, 0x2a

    .line 474
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p4, 0x0

    const/16 p5, 0x15

    if-lt p3, p5, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p1, p3

    .line 475
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p3, p5, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    .line 476
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x36

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    :cond_1
    add-int/2addr p2, p4

    .line 477
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-eq p3, p4, :cond_2

    .line 478
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const p4, 0x3fa66666    # 1.3f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 479
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_3

    .line 480
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr v1, p4

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 483
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p4, 0xb

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 484
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_3

    .line 485
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr v1, p4

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 488
    :cond_3
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    .line 489
    iget p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/16 p5, 0x10

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p4, p5

    const/16 p5, 0xf

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x31

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 491
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p4, 0x18

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 492
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_5

    .line 493
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p2, p5, v0, p1}, Landroid/view/View;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 411
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x36

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v4, 0x2a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 414
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v4, -0x80000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/view/View;->measure(II)V

    .line 415
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v3, 0x22

    .line 417
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 419
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 420
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_2

    if-le p2, p1, :cond_2

    .line 421
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->fadeOutToLessWidth(I)V

    .line 423
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_4

    .line 424
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->measure(II)V

    .line 427
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    return-void
.end method

.method public openProfile(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(ZZ)V

    return-void
.end method

.method public openProfile(ZZ)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 346
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 349
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 354
    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 356
    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    instance-of v6, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v6, :cond_2

    .line 357
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v3, v4, v0}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    .line 362
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 363
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    const-string v6, "dialog_id"

    if-eqz v5, :cond_3

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    invoke-virtual {v2, v6, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0x8

    new-array p2, p1, [I

    .line 366
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-static {v1, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    new-instance p1, Lorg/telegram/ui/Components/MediaActivity;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 368
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 369
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 371
    :cond_3
    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->hasReportSpam()Z

    move-result v0

    const-string v1, "reportSpam"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    const-string v0, "actionBarDefault"

    .line 376
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "actionBarColor"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 380
    :goto_0
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 382
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_b

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v5, "chat_id"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 387
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v2, :cond_8

    .line 388
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    const-string/jumbo v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    :cond_8
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    if-eqz p2, :cond_a

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    .line 393
    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 395
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_b
    :goto_2
    return-void
.end method

.method public openSetTimer()Z
    .locals 12

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0xd

    .line 278
    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showTimerHint()V

    :cond_1
    return v1

    .line 284
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 288
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 290
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 294
    new-instance v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/Components/ChatAvatarContainer$4;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer$4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 316
    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->updateItems(I)V

    .line 318
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$5;

    iget-object v4, v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x2

    invoke-direct {v0, p0, v4, v5, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$5;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;II)V

    aput-object v0, v3, v1

    .line 327
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 328
    aget-object v0, v3, v1

    const/16 v4, 0xdc

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 329
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 330
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 331
    aget-object v0, v3, v1

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 332
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 333
    iget-object v0, v11, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v4, 0x3e8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 334
    aget-object v0, v3, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 335
    aget-object v0, v3, v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 336
    aget-object v0, v3, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return v2
.end method

.method public setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 924
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 930
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    goto :goto_1

    :cond_1
    const/16 p1, 0x15

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_2
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 498
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    return-void
.end method

.method public setOverrideSubtitleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 651
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setTime(IZ)V
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 544
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-nez v0, :cond_1

    return-void

    .line 549
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->showTimeItem(Z)V

    .line 550
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 572
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;ZZZZLorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;ZZZZLorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 577
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 580
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v1}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v1

    .line 581
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    and-int/2addr p5, v4

    .line 584
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-nez p2, :cond_e

    if-eqz p3, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string p1, "profile_verifiedBackground"

    if-eqz p4, :cond_4

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 596
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p1, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 598
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const-string p4, "profile_verifiedCheck"

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 599
    new-instance p3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p3, p2, p1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 603
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string p2, "AccDescrVerified"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    goto/16 :goto_5

    :cond_4
    if-eqz p5, :cond_d

    .line 605
    instance-of p2, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    const-wide/16 p3, 0x3e8

    if-nez p2, :cond_5

    instance-of p5, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz p5, :cond_5

    move-object p5, p6

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p5, p5, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, p3

    .line 609
    :cond_5
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    instance-of p5, p5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz p5, :cond_6

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 610
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    instance-of p5, p5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p5, :cond_6

    .line 611
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p5, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide p3, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-virtual {p2, p3, p4, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 615
    instance-of p2, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz p2, :cond_8

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p2, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, p3

    long-to-int p3, v4

    if-le p2, p3, :cond_8

    .line 616
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-wide p3, p6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    invoke-virtual {p2, p3, p4, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_3

    .line 618
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2
    if-nez v1, :cond_b

    .line 621
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_a

    .line 623
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->updateTitleIconsPublic()V

    :cond_a
    return-void

    .line 627
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_c

    .line 628
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 631
    :cond_c
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 632
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p3, p2, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 634
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 638
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrPremium:I

    const-string p2, "AccDescrPremium"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    goto :goto_5

    .line 639
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/ScamDrawable;

    if-eqz p1, :cond_f

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 643
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    goto :goto_5

    .line 586
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/ScamDrawable;

    if-nez p1, :cond_f

    .line 587
    new-instance p1, Lorg/telegram/ui/Components/ScamDrawable;

    const/16 p3, 0xb

    xor-int/2addr p2, v3

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/ScamDrawable;-><init>(II)V

    const-string p2, "actionBarDefaultSubtitle"

    .line 588
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 589
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    sget p1, Lorg/telegram/messenger/R$string;->ScamMessage:I

    const-string p2, "ScamMessage"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 592
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    :cond_f
    :goto_5
    return-void
.end method

.method public setTitleColors(II)V
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleExpand(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 261
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 262
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 265
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 563
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMuted:I

    const-string v0, "NotificationsMuted"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 567
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 935
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 3

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 940
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 941
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 942
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 943
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_2

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 946
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 947
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 948
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 949
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_2

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 953
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 954
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_2

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showTimeItem(Z)V
    .locals 3

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    if-eqz v0, :cond_0

    const-string v1, "chat_status"

    .line 1131
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public updateOnlineCount()V
    .locals 9

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1005
    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 1006
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1010
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 1011
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    const/16 v4, 0xc8

    if-eqz v3, :cond_2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v5, v4, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_6

    .line 1019
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-le v1, v4, :cond_6

    .line 1020
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    goto :goto_1

    .line 1012
    :cond_3
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1013
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1014
    iget v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1015
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_5

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v4, v2, :cond_4

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    :cond_4
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v4, 0x2710

    if-le v3, v4, :cond_5

    .line 1016
    iget v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSubtitle()V
    .locals 1

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    return-void
.end method

.method public updateSubtitle(Z)V
    .locals 12

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 722
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 723
    iget v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_2

    const-string v6, "..."

    .line 725
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_2
    const-wide/16 v6, 0xb4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    .line 729
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-boolean v11, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v11, :cond_3

    goto/16 :goto_2

    .line 868
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 873
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 874
    iput-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    .line 877
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    .line 878
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v9, v10, v3

    .line 879
    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    aput v0, v9, v3

    .line 880
    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    .line 878
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$8;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 890
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 896
    :cond_6
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v5

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4, p1, v0, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v5, p1

    goto :goto_1

    :cond_7
    move-object v5, v4

    .line 900
    :goto_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    goto/16 :goto_8

    .line 730
    :cond_8
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v4, :cond_c

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    .line 734
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_a

    .line 736
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 737
    iput-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_a
    const v0, 0x411b3333    # 9.7f

    if-eqz p1, :cond_b

    .line 740
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    .line 741
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v2, [F

    .line 742
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, v8, v3

    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    aput v9, v5, v3

    .line 743
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    .line 741
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$7;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 761
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    .line 767
    :cond_c
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    .line 769
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()I

    move-result v0

    invoke-virtual {p1, v4, v5, v0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 772
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    sub-int/2addr p1, v2

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    :goto_4
    if-lez p1, :cond_e

    new-array v0, v2, [Ljava/lang/Object;

    .line 775
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "messages"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 777
    :cond_e
    sget p1, Lorg/telegram/messenger/R$string;->TopicProfileStatus:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "TopicProfileStatus"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :cond_f
    if-eqz v1, :cond_20

    .line 780
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_7

    .line 784
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 785
    sget p1, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 787
    :cond_11
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const-string v4, "OnlineCount"

    const-string v5, "%s, %s"

    const-string v6, "Members"

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_15

    .line 788
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v0, :cond_15

    .line 789
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_13

    .line 790
    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    if-le v1, v2, :cond_12

    new-array v1, v8, [Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    .line 791
    invoke-static {v6, v0, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :cond_12
    new-array p1, v3, [Ljava/lang/Object;

    .line 793
    invoke-static {v6, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :cond_13
    new-array p1, v2, [I

    .line 797
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v4, "%d"

    if-eqz v1, :cond_14

    .line 799
    aget v1, p1, v3

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 801
    :cond_14
    aget v1, p1, v3

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Subscribers"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 805
    :cond_15
    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_19

    if-nez p1, :cond_16

    .line 807
    sget p1, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v0, "Loading"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 809
    :cond_16
    iget-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_17

    .line 810
    sget p1, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v0, "MegaLocation"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 811
    :cond_17
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 812
    sget p1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v0, "MegaPublic"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 814
    :cond_18
    sget p1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v0, "MegaPrivate"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 818
    :cond_19
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 819
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v0, "ChannelPublic"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 821
    :cond_1a
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v0, "ChannelPrivate"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 826
    :cond_1b
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 827
    sget p1, Lorg/telegram/messenger/R$string;->YouWereKicked:I

    const-string v0, "YouWereKicked"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 828
    :cond_1c
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 829
    sget p1, Lorg/telegram/messenger/R$string;->YouLeft:I

    const-string v0, "YouLeft"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 831
    :cond_1d
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_1e

    .line 832
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p1, :cond_1e

    .line 833
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 835
    :cond_1e
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    if-le p1, v2, :cond_1f

    if-eqz v0, :cond_1f

    new-array p1, v8, [Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    .line 836
    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_1f
    new-array p1, v3, [Ljava/lang/Object;

    .line 838
    invoke-static {v6, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_20
    if-eqz v0, :cond_29

    .line 843
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_21

    move-object v0, p1

    .line 848
    :cond_21
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto/16 :goto_7

    .line 850
    :cond_22
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_23

    .line 851
    sget p1, Lorg/telegram/messenger/R$string;->ChatYourSelf:I

    const-string v0, "ChatYourSelf"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v5, p1

    goto :goto_7

    .line 852
    :cond_23
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v4, 0x514c8

    cmp-long p1, v1, v4

    if-eqz p1, :cond_28

    const-wide/32 v4, 0xbdb28

    cmp-long p1, v1, v4

    if-eqz p1, :cond_28

    const-wide/32 v4, 0xa719

    cmp-long p1, v1, v4

    if-nez p1, :cond_24

    goto :goto_6

    .line 854
    :cond_24
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 855
    sget p1, Lorg/telegram/messenger/R$string;->SupportStatus:I

    const-string v0, "SupportStatus"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 856
    :cond_25
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_26

    .line 857
    sget p1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v0, "Bot"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 859
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aput-boolean v3, p1, v3

    .line 860
    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    if-eqz v2, :cond_27

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    :cond_27
    invoke-static {v1, v0, p1, v10}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aget-boolean v0, v0, v3

    move-object v5, p1

    move v2, v0

    goto :goto_8

    .line 853
    :cond_28
    :goto_6
    sget p1, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    const-string v0, "ServiceNotifications"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_29
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_2a

    const-string p1, "chat_status"

    goto :goto_9

    :cond_2a
    const-string p1, "actionBarDefaultSubtitle"

    .line 902
    :goto_9
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez p1, :cond_2c

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-nez p1, :cond_2b

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_a

    .line 909
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_a

    .line 912
    :cond_2c
    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    :goto_a
    return-void

    .line 717
    :cond_2d
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2e

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    return-void
.end method
