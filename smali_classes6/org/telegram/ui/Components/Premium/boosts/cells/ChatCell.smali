.class public Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "ChatCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;
    }
.end annotation


# instance fields
.field private chatDeleteListener:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;

.field private final deleteImageView:Landroid/widget/ImageView;

.field private removable:Z


# direct methods
.method public static synthetic $r8$lambda$8dhWuRYWcCrDxU9a4CAngDvzgAY(Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->lambda$setChat$0(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 32
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->deleteImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 35
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget v0, Lorg/telegram/messenger/R$drawable;->poll_remove:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 39
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "Delete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v5, v2, 0x11

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p1

    :goto_1
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    move v8, p1

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    const/4 v9, 0x0

    const/16 v3, 0x30

    const/16 v4, 0x32

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x18

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    move v1, p1

    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$setChat$0(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->chatDeleteListener:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;->onChatDeleted(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected needCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 46
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->onMeasure(II)V

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->deleteImageView:Landroid/widget/ImageView;

    const/16 p2, 0x30

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageView;->measure(II)V

    return-void
.end method

.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 3

    .line 56
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->removable:Z

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 62
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "BoostingChannelWillReceiveBoost"

    .line 69
    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    if-eqz p3, :cond_1

    .line 75
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->deleteImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->deleteImageView:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->deleteImageView:Landroid/widget/ImageView;

    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChatDeleteListener(Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->chatDeleteListener:Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;

    return-void
.end method

.method public setCounter(I)V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell;->removable:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BoostingChannelWillReceiveBoost"

    .line 94
    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
