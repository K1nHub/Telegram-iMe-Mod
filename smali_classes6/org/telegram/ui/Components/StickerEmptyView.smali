.class public Lorg/telegram/ui/Components/StickerEmptyView;
.super Landroid/widget/FrameLayout;
.source "StickerEmptyView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private animateLayoutChange:Z

.field colorKey1:I

.field currentAccount:I

.field keyboardSize:I

.field private lastH:I

.field public linearLayout:Landroid/widget/LinearLayout;

.field preventMoving:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressShowing:Z

.field public final progressView:Landroid/view/View;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field showProgressRunnable:Ljava/lang/Runnable;

.field private stickerType:I

.field public stickerView:Lorg/telegram/ui/Components/BackupImageView;

.field public final subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$GXKLOxBOISy0bPzNQRJWjS_ps_M(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aR6mMwnEoW2U-BNq2JNVpnXr6qo(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->lambda$createButtonLayout$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    .line 61
    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerEmptyView$1;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->showProgressRunnable:Ljava/lang/Runnable;

    .line 187
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    .line 84
    iput-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 85
    iput-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    .line 86
    iput p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    .line 88
    new-instance p3, Lorg/telegram/ui/Components/StickerEmptyView$2;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView$2;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    .line 104
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    .line 108
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 111
    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 112
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 115
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 118
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v5, 0x75

    invoke-static {v5, v5, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v7, 0x8

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/16 v4, 0x11

    const/16 v5, 0x2e

    const/16 v7, 0x2e

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    .line 127
    new-instance p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, -0x2

    invoke-static {p2, p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickerEmptyView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getWhitespaceCount(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 450
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 451
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static synthetic lambda$createButtonLayout$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x64

    .line 153
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method

.method private setSticker()V
    .locals 9

    .line 271
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    const-string v1, "tg_placeholders_android"

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 272
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v3, "\ud83d\udc4d"

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v8, v2

    goto :goto_0

    .line 274
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 278
    iget v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    if-ltz v3, :cond_2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 279
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_2
    const-string v3, "130_130"

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    :goto_0
    const/4 v3, 0x3

    .line 284
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_firstframe"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v5, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 289
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    const/16 v1, 0x200

    .line 291
    invoke-virtual {v7, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 294
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v6, "tgs"

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 296
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 299
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    .line 297
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    .line 302
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_3
    return-void
.end method


# virtual methods
.method public createButtonLayout(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 9

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x2d

    .line 140
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 142
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView$3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/StickerEmptyView$3;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/content/Context;)V

    .line 152
    new-instance v2, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x8

    .line 156
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 157
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 158
    invoke-static {p1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/16 v3, 0x1e

    invoke-static {p1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 156
    invoke-static {p2, v2, p1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x3d4ccccd    # 0.05f

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 160
    invoke-static {v1, p1, p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 161
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 310
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 311
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "tg_placeholders_android"

    .line 312
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 313
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 254
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    .line 258
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 264
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 171
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->animateLayoutChange:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 172
    iget p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 173
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 174
    iget-boolean p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    const-wide/16 p3, 0xfa

    const/4 p5, 0x0

    if-nez p2, :cond_1

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 177
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_2

    .line 178
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 179
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    if-nez p1, :cond_2

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 184
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    return-void
.end method

.method public setAnimateLayoutChange(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->animateLayoutChange:Z

    return-void
.end method

.method public setColors(IIII)V
    .locals 1

    .line 190
    iget-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iput p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 3

    .line 319
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->keyboardSize:I

    if-eq v0, p1, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    .line 323
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->keyboardSize:I

    shr-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    if-lez p1, :cond_1

    const/16 p1, 0x14

    .line 324
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    int-to-float p1, v0

    if-eqz p2, :cond_2

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_3

    .line 328
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 331
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_3

    .line 333
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreventMoving(Z)V
    .locals 1

    .line 406
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    if-nez p1, :cond_0

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setStickerType(I)V
    .locals 1

    .line 420
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    if-eq v0, p1, :cond_0

    .line 421
    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    .line 422
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 7

    .line 427
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->getWhitespaceCount(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    .line 428
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    .line 431
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    move v5, v3

    .line 432
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 433
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    sub-int v6, v0, v3

    .line 434
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v4, v1, :cond_0

    if-ge v6, v5, :cond_1

    :cond_0
    move v4, v3

    move v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 9

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f4ccccd    # 0.8f

    const-wide/16 v5, 0x96

    const/4 v7, 0x0

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_2

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Components/StickerEmptyView$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/StickerEmptyView$4;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 225
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 227
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    goto :goto_3

    .line 229
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerEmptyView$5;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 243
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 247
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_3
    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void
.end method

.method public showProgress(ZZ)V
    .locals 7

    .line 344
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    if-eq v0, p1, :cond_7

    .line 345
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    const-wide/16 v5, 0x96

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 354
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickerEmptyView$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickerEmptyView$6;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 364
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 366
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 379
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 384
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 392
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_7
    :goto_1
    return-void
.end method
