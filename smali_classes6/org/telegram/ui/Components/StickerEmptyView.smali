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

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$GXKLOxBOISy0bPzNQRJWjS_ps_M(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    .line 53
    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerEmptyView$1;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->showProgressRunnable:Ljava/lang/Runnable;

    .line 147
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    .line 76
    iput-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 77
    iput-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    .line 78
    iput p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    .line 80
    new-instance p3, Lorg/telegram/ui/Components/StickerEmptyView$2;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView$2;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    .line 96
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerEmptyView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    .line 100
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 103
    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 104
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    .line 107
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 109
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v5, 0x75

    invoke-static {v5, v5, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
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

    .line 114
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v7, 0x8

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
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

    .line 118
    new-instance p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 122
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

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickerEmptyView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method

.method private setSticker()V
    .locals 9

    .line 231
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    const-string v1, "tg_placeholders_android"

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 232
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v3, "\ud83d\udc4d"

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v8, v2

    goto :goto_0

    .line 234
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 236
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 238
    iget v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    if-ltz v3, :cond_2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 239
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

    .line 244
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 245
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

    .line 249
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    const/16 v1, 0x200

    .line 251
    invoke-virtual {v7, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 254
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v6, "tgs"

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 256
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 259
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    .line 257
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    .line 262
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

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 270
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 271
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "tg_placeholders_android"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 273
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    .line 218
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

    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 224
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 130
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 131
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

    .line 132
    iget p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 133
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 134
    iget-boolean p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    const-wide/16 p3, 0xfa

    const/4 p5, 0x0

    if-nez p2, :cond_1

    .line 135
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 137
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    if-nez p1, :cond_2

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 144
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    return-void
.end method

.method public setAnimateLayoutChange(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->animateLayoutChange:Z

    return-void
.end method

.method public setColors(IIII)V
    .locals 1

    .line 150
    iget-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object p4, p0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iput p3, p0, Lorg/telegram/ui/Components/StickerEmptyView;->colorKey1:I

    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 3

    .line 279
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->keyboardSize:I

    if-eq v0, p1, :cond_3

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    .line 283
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->keyboardSize:I

    shr-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    if-lez p1, :cond_1

    const/16 p1, 0x14

    .line 284
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    int-to-float p1, v0

    if-eqz p2, :cond_2

    .line 286
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

    .line 287
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_3

    .line 288
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 291
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_3

    .line 293
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreventMoving(Z)V
    .locals 1

    .line 366
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->preventMoving:Z

    if-nez p1, :cond_0

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setStickerType(I)V
    .locals 1

    .line 380
    iget v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    if-eq v0, p1, :cond_0

    .line 381
    iput p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerType:I

    .line 382
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 9

    .line 160
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

    .line 162
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 163
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

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 169
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

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Components/StickerEmptyView$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/StickerEmptyView$3;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 179
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

    .line 181
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 185
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerEmptyView;->setSticker()V

    goto :goto_3

    .line 189
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->lastH:I

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerEmptyView$4;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 203
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 207
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 208
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

    .line 300
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void
.end method

.method public showProgress(ZZ)V
    .locals 7

    .line 304
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    if-eq v0, p1, :cond_7

    .line 305
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressShowing:Z

    .line 306
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

    .line 311
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

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 314
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

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickerEmptyView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickerEmptyView$5;-><init>(Lorg/telegram/ui/Components/StickerEmptyView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 324
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

    .line 326
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 332
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 334
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 339
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 344
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 352
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_7
    :goto_1
    return-void
.end method
