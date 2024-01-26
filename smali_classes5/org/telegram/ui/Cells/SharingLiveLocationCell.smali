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

.field private lastLat:D

.field private lastLong:D

.field private lastName:Ljava/lang/CharSequence;

.field private liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

.field private loading:Z

.field private loadingString:Landroid/text/SpannableString;

.field private location:Landroid/location/Location;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$RmoiWgyWRJ8VyUOGqU2gxL8Xak4(Lorg/telegram/ui/Cells/SharingLiveLocationCell;DD)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lambda$getName$1(DD)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdiKEsUTYHGeSIg_OxGp76Hfspc(Lorg/telegram/ui/Cells/SharingLiveLocationCell;DD)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lambda$getName$0(DD)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 80
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    .line 66
    new-instance v2, Landroid/location/Location;

    const-string v3, "network"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    .line 69
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 71
    new-instance v2, Lorg/telegram/ui/Cells/SharingLiveLocationCell$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell$1;-><init>(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    const-string v2, ""

    .line 161
    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    move-object/from16 v2, p4

    .line 81
    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 83
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x15

    .line 84
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 86
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 88
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 89
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 90
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 91
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 92
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 94
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    const/16 v2, 0xf

    const/4 v4, 0x0

    if-eqz p2, :cond_b

    .line 97
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v8, 0x2a

    const/16 v9, 0x2a

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1

    move v11, v5

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    or-int/lit8 v11, v11, 0x30

    if-eqz v10, :cond_2

    move v12, v4

    goto :goto_2

    :cond_2
    move v12, v2

    :goto_2
    const/16 v13, 0xc

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    const/4 v14, 0x0

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v2

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v7, -0x1

    const/16 v8, 0x14

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_4

    move v10, v5

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    or-int/lit8 v10, v10, 0x30

    const/16 v14, 0x49

    if-eqz v9, :cond_5

    move/from16 v11, p3

    goto :goto_5

    :cond_5
    move v11, v14

    :goto_5
    const/16 v12, 0xc

    if-eqz v9, :cond_6

    move v3, v14

    :cond_6
    const/4 v13, 0x0

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v3

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    .line 101
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 102
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 103
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    move v2, v5

    goto :goto_6

    :cond_7
    move v2, v6

    :goto_6
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 105
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v7, -0x1

    const/16 v8, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    move v5, v6

    :goto_7
    or-int/lit8 v9, v5, 0x30

    if-eqz v2, :cond_9

    move/from16 v10, p3

    goto :goto_8

    :cond_9
    move v10, v14

    :goto_8
    const/16 v11, 0x25

    if-eqz v2, :cond_a

    move v12, v14

    goto :goto_9

    :cond_a
    move/from16 v12, p3

    :goto_9
    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 107
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v7, 0x2a

    const/16 v8, 0x2a

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_c

    move v9, v5

    goto :goto_a

    :cond_c
    move v9, v6

    :goto_a
    or-int/lit8 v9, v9, 0x30

    if-eqz v3, :cond_d

    move v10, v4

    goto :goto_b

    :cond_d
    move v10, v2

    :goto_b
    const/4 v11, 0x6

    if-eqz v3, :cond_e

    move v12, v2

    goto :goto_c

    :cond_e
    move v12, v4

    :goto_c
    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    goto :goto_d

    :cond_f
    move v5, v6

    :goto_d
    or-int/lit8 v9, v5, 0x30

    const/16 v3, 0x4a

    if-eqz v2, :cond_10

    move/from16 v10, p3

    goto :goto_e

    :cond_10
    move v10, v3

    :goto_e
    const/16 v11, 0x11

    if-eqz v2, :cond_11

    move v12, v3

    goto :goto_f

    :cond_11
    move/from16 v12, p3

    :goto_f
    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :goto_10
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)Landroid/graphics/RectF;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharingLiveLocationCell;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getName(DD)Ljava/lang/CharSequence;
    .locals 8

    .line 163
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loading:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    return-object p1

    .line 166
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastLat:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastLong:D

    sub-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loading:Z

    .line 168
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/Cells/SharingLiveLocationCell$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/SharingLiveLocationCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharingLiveLocationCell;DD)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 214
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$getName$0(DD)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastLat:D

    .line 207
    iput-wide p3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastLong:D

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loading:Z

    .line 209
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    iget-object p3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    .line 210
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$getName$1(DD)V
    .locals 7

    .line 170
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {p3, p4, p1, p2}, Lorg/telegram/messenger/LocationController;->detectOcean(DD)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 175
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udf0a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 185
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ", "

    .line 194
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 200
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->lastName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    :cond_5
    :goto_1
    new-instance v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/SharingLiveLocationCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharingLiveLocationCell;DD)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentInfo:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 359
    iget v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    .line 360
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v1, v0

    .line 365
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

    .line 369
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 370
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x30

    const/16 v4, 0x2a

    const/16 v5, 0x12

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x2b

    if-eqz v0, :cond_5

    .line 371
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

    .line 373
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

    .line 377
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_8

    .line 378
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_liveLocationProgress:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v0

    goto :goto_6

    .line 380
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v0

    .line 382
    :goto_6
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_livePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 385
    iget-object v5, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->rect:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float v7, v2, v0

    const/4 v8, 0x0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 387
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatLocationLeftTime(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_livePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 391
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

    .line 116
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

    .line 132
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 133
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 136
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 140
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v2, p2

    goto :goto_0

    .line 144
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

    .line 146
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 147
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    .line 331
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentInfo:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 332
    iget v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 334
    iget-wide v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 342
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

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V
    .locals 9

    .line 219
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    .line 220
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 223
    :cond_0
    iget v2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    .line 226
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 229
    :goto_0
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 232
    iput-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v7, 0x0

    cmp-long v3, v0, v7

    if-lez v3, :cond_3

    .line 234
    iget v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 237
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0, v7}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_2

    .line 241
    :cond_2
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {p0, v3, v4, v0, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getName(DD)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    move v4, v6

    goto :goto_2

    .line 244
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

    .line 246
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 247
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 248
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v1, v3

    goto :goto_2

    .line 251
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {p0, v3, v4, v0, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getName(DD)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v5

    .line 257
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loadingString:Landroid/text/SpannableString;

    if-nez v0, :cond_6

    .line 259
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "dkaraush has been here"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loadingString:Landroid/text/SpannableString;

    .line 260
    new-instance v1, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0x64

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v3, v7, v6, v8}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loadingString:Landroid/text/SpannableString;

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v7, 0x21

    invoke-virtual {v0, v1, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 262
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->loadingString:Landroid/text/SpannableString;

    :cond_7
    if-nez v4, :cond_9

    .line 265
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 266
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object v1, v0

    .line 269
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->pin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 270
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 271
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_placeLocationBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x2a

    .line 272
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 273
    new-instance v7, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v7, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 274
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v7, v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/16 v0, 0x18

    .line 275
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    if-eqz p2, :cond_b

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    if-eqz v2, :cond_a

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v2, p3, v6

    const/4 v0, 0x1

    invoke-static {p1, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "%s - %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    .line 287
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v6}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    :cond_c
    if-nez p3, :cond_d

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p3, "Loading"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    .line 295
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_3
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/location/Location;)V
    .locals 4

    .line 301
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->liveLocation:Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 302
    iget-wide v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget v0, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_0

    .line 310
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

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->currentAccount:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 318
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->location:Landroid/location/Location;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 322
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

    .line 324
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

    .line 326
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->distanceTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_2
    return-void
.end method
