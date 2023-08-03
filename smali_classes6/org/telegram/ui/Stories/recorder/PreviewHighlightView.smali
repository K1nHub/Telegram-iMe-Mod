.class public Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;
.super Landroid/widget/FrameLayout;
.source "PreviewHighlightView.java"


# instance fields
.field private final bottom:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field private shownBottom:Z

.field private shownTop:Z

.field private storiesCount:I

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field private final top:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 40
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    const/4 v3, 0x0

    .line 146
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    move/from16 v4, p2

    .line 50
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->currentAccount:I

    .line 52
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 54
    new-instance v5, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView$1;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    .line 73
    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    .line 74
    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 75
    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 76
    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 77
    sget v4, Lorg/telegram/messenger/R$string;->RightNow:I

    const-string v7, "RightNow"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x37

    const/4 v10, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 78
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x8

    .line 82
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v10, 0x28

    const/16 v11, 0x28

    const/16 v12, 0x35

    const/16 v13, 0xc

    const/16 v14, 0xf

    const/16 v15, 0xc

    const/16 v16, 0x0

    .line 83
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    const/4 v6, -0x2

    .line 84
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->bottom:Landroid/widget/FrameLayout;

    .line 87
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-direct {v7, v8, v9}, Lorg/telegram/ui/Stories/StoryCaptionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    .line 88
    iput-boolean v2, v7, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    .line 89
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x57

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x40

    .line 90
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v9, 0x1c

    const/16 v10, 0x1c

    const/16 v11, 0x55

    const/16 v14, 0xc

    const/16 v15, 0x10

    .line 102
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x16

    .line 105
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/high16 v8, -0x1000000

    const/16 v9, 0x7a

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41900000    # 18.0f

    .line 108
    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x64ffffff

    .line 109
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    sget v2, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    const-string v8, "ReplyPrivately"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x13

    const/16 v11, 0x18

    const/16 v13, 0x18

    const/4 v14, 0x0

    .line 111
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    sget v1, Lorg/telegram/messenger/R$drawable;->input_attach:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v8, 0x1c

    const/16 v9, 0x1c

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/16 v13, 0x9

    .line 121
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, -0x1

    const/16 v8, 0x2c

    const/16 v9, 0x57

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/16 v12, 0x37

    const/16 v13, 0x8

    .line 128
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 133
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;)I
    .locals 0

    .line 37
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    return p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public show(ZZLandroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 152
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    goto :goto_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    if-ne v0, p2, :cond_2

    return-void

    .line 156
    :cond_2
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    :goto_0
    if-eqz p1, :cond_3

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->bottom:Landroid/widget/FrameLayout;

    .line 161
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p3, :cond_7

    .line 165
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    .line 166
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public updateCaption(Ljava/lang/CharSequence;)V
    .locals 1

    .line 142
    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateCount()V
    .locals 1

    .line 137
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfStoriesCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
