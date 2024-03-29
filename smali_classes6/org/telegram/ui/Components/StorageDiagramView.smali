.class public Lorg/telegram/ui/Components/StorageDiagramView;
.super Landroid/view/View;
.source "StorageDiagramView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;
    }
.end annotation


# instance fields
.field private animateToPercentage:[F

.field private arcDrawingRadianOffset:I

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field backAnimator:Landroid/animation/ValueAnimator;

.field cacheModel:Lorg/telegram/ui/Storage/CacheModel;

.field private customCenterText:Ljava/lang/String;

.field private customSize:I

.field private data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

.field private dialogId:Ljava/lang/Long;

.field dialogText:Ljava/lang/CharSequence;

.field dialogTextLayout:Landroid/text/StaticLayout;

.field dialogTextPaint:Landroid/text/TextPaint;

.field private drawingPercentage:[F

.field enabledCount:I

.field private isNotClickableAvatar:Z

.field pressedProgress:F

.field private rectF:Landroid/graphics/RectF;

.field private singleProgress:F

.field private startFromPercentage:[F

.field text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$hDsa_m4OlSXdrEwumAi9CkRFDOE(Lorg/telegram/ui/Components/StorageDiagramView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;->lambda$setPressed$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xw1Cq-14n1TsySIeSy9juLMLth4(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StorageDiagramView;->lambda$update$0([Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 2

    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 123
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 124
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 125
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 129
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string p3, "ArchivedChats"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    .line 130
    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 p3, 0x5a

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->fork_fab_archive:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x1e

    .line 131
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p2, v0

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 135
    sget p1, Lorg/telegram/messenger/R$string;->CacheOtherChats:I

    const-string p2, "CacheOtherChats"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p4, p2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    :cond_1
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {p2, p3, p1}, Lorg/telegram/messenger/DialogObject;->setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    const/4 p2, 0x6

    .line 141
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p4, p2, p3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    .line 96
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 97
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, p2, v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private synthetic lambda$setPressed$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 561
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$0([Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 485
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 486
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public calculateSize()J
    .locals 9

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    move-wide v3, v1

    .line 600
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-nez v5, :cond_1

    const-wide/16 v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v5

    .line 602
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v8, v7, v0

    if-eqz v8, :cond_4

    aget-object v8, v7, v0

    iget-boolean v8, v8, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v8, :cond_2

    cmp-long v8, v5, v1

    if-gtz v8, :cond_2

    goto :goto_3

    :cond_2
    cmp-long v8, v5, v1

    if-lez v8, :cond_3

    goto :goto_2

    .line 605
    :cond_3
    aget-object v5, v7, v0

    iget-wide v5, v5, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_2
    add-long/2addr v3, v5

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-wide v3
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 630
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 612
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 616
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onAvatarClick()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 621
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 625
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 232
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    if-nez v1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    cmpl-float v2, v1, v8

    if-eqz v2, :cond_1

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 239
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    .line 240
    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3e19999a    # 0.15f

    .line 243
    iget v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    sub-float v3, v8, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    .line 244
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v7, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 247
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    .line 248
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpl-float v4, v1, v9

    if-lez v4, :cond_4

    float-to-double v4, v1

    sub-double/2addr v4, v2

    double-to-float v1, v4

    .line 249
    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_4

    .line 251
    iput v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    goto :goto_0

    .line 255
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpg-float v4, v1, v8

    if-gez v4, :cond_4

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-float v1, v4

    .line 256
    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    .line 258
    iput v8, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    :cond_4
    :goto_0
    const/4 v10, 0x0

    move v12, v9

    move v11, v10

    .line 264
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v2, v1

    const/16 v13, 0x15

    const-wide v14, 0x4066800000000000L    # 180.0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    const/16 v6, 0xff

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, -0x3c4c0000    # -360.0f

    const/high16 v20, 0x43b40000    # 360.0f

    const/high16 v21, 0x40000000    # 2.0f

    if-ge v11, v2, :cond_b

    .line 265
    aget-object v2, v1, v11

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    aget v3, v2, v11

    cmpl-float v3, v3, v9

    if-nez v3, :cond_5

    goto/16 :goto_4

    .line 268
    :cond_5
    aget v22, v2, v11

    .line 269
    aget-object v2, v1, v11

    iget-boolean v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    if-eqz v2, :cond_9

    mul-float v19, v19, v22

    .line 270
    iget v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    sub-float v2, v8, v2

    mul-float v2, v2, v18

    add-float v19, v19, v2

    cmpl-float v2, v19, v9

    if-lez v2, :cond_6

    move v4, v9

    goto :goto_2

    :cond_6
    move/from16 v4, v19

    .line 274
    :goto_2
    aget-object v2, v1, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    aget-object v1, v1, v11

    iget v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, v21

    float-to-double v1, v1

    mul-double v16, v16, v1

    div-double v16, v16, v14

    float-to-double v5, v4

    mul-double v5, v5, v16

    double-to-float v3, v5

    .line 278
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_8

    .line 279
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v4, v4, -0x5a

    int-to-float v4, v4

    mul-float v20, v20, v12

    sub-float v4, v4, v20

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v1

    double-to-float v4, v4

    add-float/2addr v3, v4

    .line 280
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v5, v5, -0x5a

    int-to-float v5, v5

    sub-float v5, v5, v20

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    add-float/2addr v4, v1

    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_7

    .line 282
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 284
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v1, v1, v21

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 288
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    mul-float v20, v20, v12

    sub-float v3, v1, v20

    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v6, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_9
    :goto_3
    add-float v12, v12, v22

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    move v12, v9

    move v11, v10

    .line 296
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v2, v1

    if-ge v11, v2, :cond_12

    .line 297
    aget-object v2, v1, v11

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    aget v3, v2, v11

    cmpl-float v3, v3, v9

    if-nez v3, :cond_c

    goto/16 :goto_9

    .line 300
    :cond_c
    aget v22, v2, v11

    .line 301
    aget-object v2, v1, v11

    iget-boolean v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    if-nez v2, :cond_10

    mul-float v2, v22, v19

    .line 302
    iget v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    sub-float v3, v8, v3

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    cmpl-float v3, v2, v9

    if-lez v3, :cond_d

    move v4, v9

    goto :goto_6

    :cond_d
    move v4, v2

    .line 306
    :goto_6
    aget-object v2, v1, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    aget-object v1, v1, v11

    iget v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, v21

    float-to-double v1, v1

    mul-double v23, v1, v16

    div-double v23, v23, v14

    float-to-double v14, v4

    mul-double v14, v14, v23

    double-to-float v3, v14

    .line 310
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_f

    .line 311
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v4, v4, -0x5a

    int-to-float v4, v4

    mul-float v5, v12, v20

    sub-float/2addr v4, v5

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v1

    double-to-float v4, v14

    add-float/2addr v3, v4

    .line 312
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v14, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v14, v14, -0x5a

    int-to-float v14, v14

    sub-float/2addr v14, v5

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v1, v14

    double-to-float v1, v1

    add-float/2addr v4, v1

    .line 313
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_e

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 316
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v1, v1, v21

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 320
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    mul-float v3, v12, v20

    sub-float v3, v1, v3

    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v14, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v15, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_10
    :goto_7
    move v15, v6

    :goto_8
    add-float v12, v12, v22

    goto :goto_a

    :cond_11
    :goto_9
    move v15, v6

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move v6, v15

    const-wide v14, 0x4066800000000000L    # 180.0

    goto/16 :goto_5

    .line 327
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_13

    .line 328
    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v2, 0x94

    if-eqz v1, :cond_15

    .line 333
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 336
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v3

    add-float/2addr v1, v3

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float v3, v3, v21

    .line 338
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v5, 0x73

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    const/16 v8, 0x91

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v10, v5, v6, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 339
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    add-float/2addr v3, v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    const/16 v3, 0x76

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v1, v3, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 341
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_16

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v1, 0x1e

    .line 347
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v21

    sub-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 348
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 349
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v0, p0

    .line 148
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/16 v4, 0x6b

    const/4 v5, 0x2

    const/16 v6, 0x6e

    const/4 v7, 0x3

    if-eqz v1, :cond_0

    const/16 v1, 0xa6

    .line 151
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v8, p1

    .line 149
    invoke-super {v0, v8, v1}, Landroid/view/View;->onMeasure(II)V

    .line 153
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 154
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v5

    .line 155
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v9, v10, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_0
    move/from16 v8, p1

    .line 159
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_0
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 160
    iget v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    if-eqz v9, :cond_2

    add-int/lit8 v9, v9, 0x6

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_1
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 158
    invoke-super {v0, v1, v2}, Landroid/view/View;->onMeasure(II)V

    .line 163
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    if-eqz v10, :cond_3

    sub-int/2addr v10, v7

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    :goto_2
    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    if-eqz v11, :cond_4

    sub-int/2addr v11, v7

    int-to-float v4, v11

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    :goto_3
    invoke-virtual {v1, v2, v9, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move v1, v3

    .line 166
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v10, 0x3e3851ec    # 0.18f

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x12c

    sget-object v21, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v15, v21

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customCenterText:Ljava/lang/String;

    const/16 v4, 0xd

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    goto :goto_5

    .line 171
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 172
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    iget-object v15, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v16, 0x3e3851ec    # 0.18f

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x12c

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 178
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 179
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    goto :goto_7

    .line 181
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 182
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    iget-object v7, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    .line 184
    iget-object v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customCenterText:Ljava/lang/String;

    if-eqz v9, :cond_7

    move v7, v3

    .line 188
    :cond_7
    iget v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_6
    sub-int/2addr v9, v2

    sub-int/2addr v9, v7

    div-int/2addr v9, v5

    .line 189
    iget-object v6, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v2, v9

    invoke-virtual {v6, v3, v9, v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 190
    iget-object v6, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v2, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v6, v3, v9, v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 192
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 195
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 196
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_9

    .line 197
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    .line 199
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 200
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v12, v2, v3

    .line 201
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x1

    move v6, v12

    invoke-static/range {v4 .. v13}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout2(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    .line 203
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_b

    const/16 v3, 0xa

    .line 204
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x5a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 205
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x2d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 208
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/StorageDiagramView;->updateDescription()J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 514
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->isNotClickableAvatar:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 523
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 525
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setPressed(Z)V

    return v2

    .line 528
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 535
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 530
    new-instance p1, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const-wide/16 v3, 0x50

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 532
    :cond_5
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/StorageDiagramView;->setPressed(Z)V

    return v2
.end method

.method public setArcDrawingRadianOffset(I)V
    .locals 0

    .line 72
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->arcDrawingRadianOffset:I

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    return-void
.end method

.method public setCustomCenterText(Ljava/lang/String;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->customCenterText:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->customSize:I

    return-void
.end method

.method public setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V
    .locals 0

    .line 212
    iput-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 213
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 215
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    .line 216
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    .line 217
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    const/4 p1, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;->update(Z)V

    .line 221
    iget p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 224
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    :goto_0
    return-void
.end method

.method public setNotClickableAvatar(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->isNotClickableAvatar:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 544
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->isNotClickableAvatar:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 550
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_1

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    .line 558
    iget p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 559
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    .line 560
    new-instance v0, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StorageDiagramView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StorageDiagramView$2;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 573
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public update(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 416
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v8, v2

    move v7, v4

    .line 420
    :goto_0
    array-length v10, v1

    if-ge v7, v10, :cond_6

    .line 421
    iget-object v10, v0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-nez v10, :cond_1

    const-wide/16 v11, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v7}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v11

    .line 422
    :goto_1
    aget-object v10, v1, v7

    if-eqz v10, :cond_5

    aget-object v10, v1, v7

    iget-boolean v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v10, :cond_2

    cmp-long v10, v11, v2

    if-gtz v10, :cond_2

    goto :goto_3

    .line 426
    :cond_2
    aget-object v10, v1, v7

    iget-object v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->sizeAsDouble:Ljava/lang/Double;

    if-eqz v10, :cond_3

    .line 427
    aget-object v10, v1, v7

    iget-object v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->sizeAsDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v5, v10

    goto :goto_3

    :cond_3
    cmp-long v10, v11, v2

    if-lez v10, :cond_4

    goto :goto_2

    .line 429
    :cond_4
    aget-object v10, v1, v7

    iget-wide v11, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_2
    add-long/2addr v8, v11

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 434
    :cond_6
    iput v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const/4 v7, 0x0

    move v10, v4

    move v13, v7

    move v14, v13

    .line 436
    :goto_4
    array-length v15, v1

    if-ge v10, v15, :cond_11

    .line 437
    iget-object v15, v0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-nez v15, :cond_7

    const-wide/16 v15, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v15, v10}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v15

    .line 438
    :goto_5
    aget-object v17, v1, v10

    if-eqz v17, :cond_9

    .line 439
    aget-object v11, v1, v10

    iget-boolean v11, v11, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v11, :cond_8

    cmp-long v11, v15, v2

    if-lez v11, :cond_9

    .line 440
    :cond_8
    iget v11, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    .line 444
    :cond_9
    aget-object v11, v1, v10

    if-eqz v11, :cond_10

    aget-object v11, v1, v10

    iget-boolean v11, v11, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v11, :cond_a

    cmp-long v11, v15, v2

    if-gtz v11, :cond_a

    goto :goto_7

    :cond_a
    cmp-long v11, v15, v2

    if-lez v11, :cond_b

    move-wide v2, v15

    goto :goto_6

    .line 448
    :cond_b
    aget-object v12, v1, v10

    iget-wide v2, v12, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_6
    long-to-float v2, v2

    long-to-float v3, v8

    div-float/2addr v2, v3

    .line 451
    aget-object v3, v1, v10

    iget-object v3, v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->sizeAsDouble:Ljava/lang/Double;

    if-eqz v3, :cond_c

    .line 452
    aget-object v2, v1, v10

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->sizeAsDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v2, v5

    double-to-float v2, v2

    :cond_c
    const v3, 0x3ce37de9    # 0.02777f

    cmpg-float v12, v2, v3

    if-gez v12, :cond_d

    move v2, v3

    :cond_d
    add-float/2addr v13, v2

    cmpl-float v3, v2, v14

    if-lez v3, :cond_f

    .line 459
    aget-object v3, v1, v10

    iget-boolean v3, v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v3, :cond_e

    if-lez v11, :cond_f

    :cond_e
    move v14, v2

    .line 462
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aput v2, v3, v10

    goto :goto_8

    .line 445
    :cond_10
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aput v7, v2, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v13, v2

    if-lez v3, :cond_13

    div-float/2addr v2, v13

    move v3, v4

    .line 466
    :goto_9
    array-length v5, v1

    if-ge v3, v5, :cond_13

    .line 467
    aget-object v5, v1, v3

    if-nez v5, :cond_12

    goto :goto_a

    .line 470
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aget v6, v5, v3

    mul-float/2addr v6, v2

    aput v6, v5, v3

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    if-nez p1, :cond_14

    .line 475
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    array-length v1, v1

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 477
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    array-length v5, v1

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_15

    .line 480
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 481
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 483
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 484
    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/StorageDiagramView$1;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 502
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_b
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateDescription()J
    .locals 9

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->customCenterText:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 581
    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5, v0, v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v5, ""

    invoke-virtual {v0, v5, v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    return-wide v1

    .line 586
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StorageDiagramView;->calculateSize()J

    move-result-wide v5

    .line 587
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 588
    array-length v8, v0

    if-le v8, v4, :cond_3

    .line 589
    iget-object v8, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    move-object v2, v7

    goto :goto_0

    :cond_1
    aget-object v2, v0, v3

    :goto_0
    invoke-virtual {v8, v2, v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 590
    iget-object v2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v7, v0, v4

    :goto_1
    invoke-virtual {v2, v7, v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    :cond_3
    return-wide v5
.end method
