.class public Lorg/telegram/ui/Components/PlayingGameDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "PlayingGameDrawable.java"


# instance fields
.field private currentAccount:I

.field private isChat:Z

.field private final isDialogScreen:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private started:Z


# direct methods
.method public static synthetic $r8$lambda$ixtMLvIp_eB4jOhCaADetvE_EK8(Lorg/telegram/ui/Components/PlayingGameDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    return-void
.end method

.method public constructor <init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    .line 25
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->currentAccount:I

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    .line 29
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isDialogScreen:Z

    .line 37
    iput-object p2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private checkUpdate()V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    if-eqz v0, :cond_1

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->update()V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PlayingGameDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlayingGameDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PlayingGameDrawable;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private update()V
    .locals 5

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 50
    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    const-wide/16 v0, 0x10

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    .line 54
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 57
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    long-to-float v2, v2

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 59
    iput v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 61
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    const/16 v1, 0xa

    .line 77
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v2, v8

    const/4 v9, 0x2

    div-int/2addr v2, v9

    add-int/2addr v1, v2

    .line 79
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    move v11, v1

    .line 86
    iget-object v1, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isDialogScreen:Z

    if-eqz v2, :cond_1

    const-string v2, "chats_actionMessage"

    goto :goto_1

    :cond_1
    const-string v2, "chat_status"

    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v8

    add-int v5, v11, v8

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    iget v1, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x420c0000    # 35.0f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, v1, v4

    if-gez v5, :cond_2

    div-float/2addr v1, v4

    sub-float v1, v2, v1

    mul-float v1, v1, v3

    goto :goto_2

    :cond_2
    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    :goto_2
    float-to-int v1, v1

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x3

    const/16 v6, 0xff

    if-ge v3, v5, :cond_6

    const/4 v5, 0x5

    .line 95
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    mul-int v12, v12, v3

    const v13, 0x41133333    # 9.2f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v13, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    mul-float v5, v5, v13

    sub-float/2addr v12, v5

    const/high16 v5, 0x437f0000    # 255.0f

    if-ne v3, v9, :cond_3

    .line 97
    iget-object v14, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    mul-float v13, v13, v5

    div-float/2addr v13, v4

    float-to-int v5, v13

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_3
    if-nez v3, :cond_5

    cmpl-float v14, v13, v4

    if-lez v14, :cond_4

    .line 100
    iget-object v6, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    sub-float/2addr v13, v4

    div-float/2addr v13, v4

    sub-float v13, v2, v13

    mul-float v13, v13, v5

    float-to-int v5, v13

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 102
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 105
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    :goto_4
    div-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v11

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v13, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v5, v6, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 109
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    iget-object v2, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    int-to-float v3, v1

    mul-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x168

    int-to-float v4, v1

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isDialogScreen:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "windowBackgroundWhite"

    goto :goto_5

    :cond_7
    const-string v2, "actionBarDefault"

    :goto_5
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x4

    .line 112
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    div-int/2addr v8, v9

    add-int/2addr v11, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v11, v2

    int-to-float v2, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x12

    .line 149
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x14

    .line 144
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIsChat(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    .line 67
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    return-void
.end method
