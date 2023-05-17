.class public Lorg/telegram/ui/Cells/SharingLiveLocationCell;
.super Landroid/widget/FrameLayout;
.source "SharingLiveLocationCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentAccount:I

.field private currentInfo:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

.field private distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private invalidateRunnable:Ljava/lang/Runnable;

.field private liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

.field private location:Landroid/location/Location;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    .line 57
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 59
    new-instance v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell$1;-><init>(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    .line 69
    iput-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 71
    new-instance p4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x15

    .line 72
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 74
    new-instance p4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 76
    new-instance p4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p4, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    .line 77
    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 78
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 79
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/16 p4, 0xf

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 83
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    or-int/lit8 v6, v6, 0x30

    if-eqz v5, :cond_2

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, p4

    :goto_2
    const/16 v8, 0xc

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move p4, v0

    :goto_3
    const/4 v9, 0x0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/16 v4, 0x14

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    or-int/lit8 v5, v5, 0x30

    const/16 v10, 0x49

    if-eqz p4, :cond_5

    move v6, p3

    goto :goto_5

    :cond_5
    move v6, v10

    :goto_5
    const/16 v7, 0xc

    if-eqz p4, :cond_6

    move v8, v10

    goto :goto_6

    :cond_6
    move v8, p3

    :goto_6
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p1, 0xe

    .line 87
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v2

    :goto_7
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/16 v4, 0x14

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    or-int/lit8 v5, v1, 0x30

    if-eqz p2, :cond_9

    move v6, p3

    goto :goto_9

    :cond_9
    move v6, v10

    :goto_9
    const/16 v7, 0x25

    if-eqz p2, :cond_a

    move v8, v10

    goto :goto_a

    :cond_a
    move v8, p3

    :goto_a
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    .line 93
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_c

    move v5, v1

    goto :goto_b

    :cond_c
    move v5, v2

    :goto_b
    or-int/lit8 v5, v5, 0x30

    if-eqz p2, :cond_d

    move v6, v0

    goto :goto_c

    :cond_d
    move v6, p4

    :goto_c
    const/4 v7, 0x6

    if-eqz p2, :cond_e

    move v8, p4

    goto :goto_d

    :cond_e
    move v8, v0

    :goto_d
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_f

    goto :goto_e

    :cond_f
    move v1, v2

    :goto_e
    or-int/lit8 v5, v1, 0x30

    const/16 p4, 0x4a

    if-eqz p2, :cond_10

    move v6, p3

    goto :goto_f

    :cond_10
    move v6, p4

    :goto_f
    const/16 v7, 0x11

    if-eqz p2, :cond_11

    move v8, p4

    goto :goto_10

    :cond_11
    move v8, p3

    :goto_10
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)Landroid/graphics/RectF;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentInfo:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 266
    iget v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    .line 267
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v1, v0

    .line 272
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    sub-int/2addr v1, v2

    .line 276
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 277
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x30

    const/16 v4, 0x2a

    const/16 v5, 0x12

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x2b

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v7, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5

    .line 280
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v8, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 284
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_8

    .line 285
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_liveLocationProgress:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v0

    goto :goto_6

    .line 287
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v0

    .line 289
    :goto_6
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_livePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    iget-object v5, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float v7, v2, v0

    const/4 v8, 0x0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 294
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatLocationLeftTime(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_livePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 298
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_9

    const/16 v1, 0x25

    goto :goto_7

    :cond_9
    const/16 v1, 0x1f

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_livePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setDialog(JLorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 3

    .line 118
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 119
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 122
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 123
    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 126
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v2, p2

    goto :goto_0

    .line 130
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 133
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 137
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentInfo:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 239
    iget v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 241
    iget-wide v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 249
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V
    .locals 7

    .line 145
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    .line 146
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 149
    :cond_0
    iget v2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 152
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 153
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 155
    :goto_0
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_2

    .line 156
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->pin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_placeLocationBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x2a

    .line 161
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 162
    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v6, v1, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/16 v1, 0x18

    .line 164
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 165
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 168
    :cond_2
    iput-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 170
    iget v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v0, v1

    goto :goto_1

    .line 177
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 179
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 180
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v0, v3

    goto :goto_1

    :cond_4
    move-object v0, v5

    .line 185
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    if-eqz p2, :cond_6

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    const/4 p2, 0x0

    if-eqz v2, :cond_5

    .line 192
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s - %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 194
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p3, "Loading"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 202
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_2
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/location/Location;)V
    .locals 4

    .line 208
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 209
    iget-wide v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 229
    iget-object p1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p1

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatLocationUpdateDate(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    invoke-virtual {v3, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p2

    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s - %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 233
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_2
    return-void
.end method
