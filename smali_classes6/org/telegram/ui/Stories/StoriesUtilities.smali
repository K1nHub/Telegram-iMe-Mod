.class public Lorg/telegram/ui/Stories/StoriesUtilities;
.super Ljava/lang/Object;
.source "StoriesUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;,
        Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
    }
.end annotation


# static fields
.field public static closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field static debugRunnable:Ljava/lang/Runnable;

.field static debugState:I

.field public static expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

.field public static grayLastColor:I

.field public static grayPaint:Landroid/graphics/Paint;

.field private static final rectTmp:Landroid/graphics/RectF;

.field public static storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

.field public static storyCellGrayLastColor:I

.field public static storyCellGreyPaint:[Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/telegram/ui/Components/GradientTools;

    .line 54
    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    new-array v0, v0, [Landroid/graphics/Paint;

    .line 60
    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 74
    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    .line 75
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$1;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 632
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    const-string v0, "StoryEditing"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 634
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v0, "UploadingStory"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "\u2026"

    .line 636
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 638
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 639
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 640
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 641
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    .line 642
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 644
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_1
    return-void
.end method

.method public static applyViewedUser(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 698
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-nez v0, :cond_1

    .line 700
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyViews;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    .line 702
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 703
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    .line 704
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static checkGrayPaint()V
    .locals 4

    .line 433
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 435
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 437
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 439
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 440
    sget v2, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    if-eq v2, v0, :cond_4

    .line 441
    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    .line 442
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_3

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, v2, v1

    const/4 v2, -0x1

    if-gez v1, :cond_2

    .line 446
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 448
    :cond_2
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v3, 0x3ee147ae    # 0.44f

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 451
    :cond_3
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static checkStoryCellGrayPaint(Z)V
    .locals 4

    .line 409
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v1, v0, p0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 410
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p0

    .line 411
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    if-nez p0, :cond_1

    .line 415
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 416
    sget v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    if-eq v1, v0, :cond_5

    .line 417
    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    .line 418
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v3, 0x3f389375    # 0.721f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v2, :cond_4

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v1, v1, v2

    const/4 v2, -0x1

    if-gez v1, :cond_3

    .line 422
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v1, p0

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 424
    :cond_3
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v1, p0

    const v1, 0x3ee147ae    # 0.44f

    invoke-static {v0, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 427
    :cond_4
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v1, p0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static createExpiredStoryString()Ljava/lang/CharSequence;
    .locals 4

    .line 663
    sget v0, Lorg/telegram/messenger/R$string;->ExpiredStory:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExpiredStory"

    invoke-static {v1, v3, v0, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZLjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createExpiredStoryString(ZLjava/lang/String;I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 667
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 668
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 669
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_bomb:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p0, :cond_0

    const p0, 0x3f4ccccd    # 0.8f

    .line 671
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(F)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 673
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :goto_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    .line 675
    invoke-virtual {v0, p1, p2, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createReplyStoryString()Ljava/lang/CharSequence;
    .locals 4

    .line 680
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 681
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    const-string v3, "Story"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 682
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory2:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 683
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V
    .locals 11

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    sub-float v9, v7, v6

    cmpg-float v0, v6, p5

    if-gez v0, :cond_0

    add-float v0, p5, v9

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 715
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v10, 0x1

    sub-float v3, v0, v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    .line 717
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 720
    :goto_0
    invoke-static {p3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v0, 0x43b40000    # 360.0f

    add-float v0, p5, v0

    .line 721
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    if-nez v10, :cond_2

    cmpl-float v0, v6, p5

    if-lez v0, :cond_1

    cmpg-float v0, v7, v8

    if-ltz v0, :cond_2

    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, v9

    move-object v5, p2

    .line 724
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    sub-float v3, v0, v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 729
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 7

    .line 68
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    .line 70
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 29

    move-wide/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    .line 91
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v9

    .line 92
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 93
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    .line 94
    invoke-static {v8, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$002(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;J)J

    .line 95
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->reset()V

    move v2, v10

    .line 105
    :cond_0
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLoading(J)Z

    move-result v3

    .line 107
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v9}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v4

    goto :goto_0

    :cond_1
    move/from16 v4, p4

    .line 111
    :goto_0
    iget-object v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v5, :cond_2

    .line 112
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v9, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move v3, v10

    :cond_2
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_4

    .line 119
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v10

    move v5, v11

    move v2, v12

    goto :goto_2

    .line 122
    :cond_3
    invoke-static {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v2

    move v4, v10

    move v5, v11

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_7

    .line 125
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v4, :cond_5

    move v4, v2

    move v2, v12

    move v5, v2

    goto :goto_2

    .line 129
    :cond_5
    iget v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v9, v0, v1, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result v4

    if-nez v4, :cond_6

    move v5, v12

    goto :goto_1

    :cond_6
    move v5, v13

    :goto_1
    move/from16 v28, v4

    move v4, v2

    move/from16 v2, v28

    goto :goto_2

    .line 133
    :cond_7
    invoke-static {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v4

    move v5, v4

    move v4, v2

    move v2, v5

    .line 136
    :goto_2
    iget v14, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    const/4 v15, 0x0

    move/from16 p4, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v14, v5, :cond_b

    if-ne v14, v11, :cond_8

    move/from16 v16, v13

    goto :goto_3

    :cond_8
    move/from16 v16, p4

    :goto_3
    if-ne v5, v11, :cond_9

    .line 141
    iput v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    :cond_9
    if-eqz v16, :cond_a

    .line 144
    iput v14, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    .line 146
    iput v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 147
    iput v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    goto :goto_4

    .line 149
    :cond_a
    iput v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 150
    iput v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 154
    :cond_b
    :goto_4
    iput v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    .line 156
    iget-object v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v5, :cond_c

    const v14, 0x3da3d70a    # 0.08f

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v5

    goto :goto_5

    :cond_c
    move v5, v4

    .line 157
    :goto_5
    iget-boolean v14, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    if-eq v14, v3, :cond_d

    if-eqz v3, :cond_d

    .line 158
    iput v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    .line 159
    iput-boolean v10, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    .line 161
    :cond_d
    iput-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    .line 162
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v3, :cond_10

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_10

    .line 163
    :cond_f
    iget-object v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 164
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    :cond_10
    cmpl-float v3, v5, v4

    if-eqz v3, :cond_11

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 170
    iget-object v14, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    iget-object v11, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v6, v5, v5, v14, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v11, v3

    goto :goto_6

    :cond_11
    move v11, v10

    .line 173
    :goto_6
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_12

    .line 175
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    :cond_12
    move v14, v3

    .line 177
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v15

    goto :goto_7

    :cond_13
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 178
    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v3

    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    iget v10, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 179
    invoke-static {v5, v10}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v5

    iget v10, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 177
    invoke-static {v3, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    :goto_7
    cmpl-float v5, v3, v15

    if-nez v5, :cond_14

    .line 183
    iget-object v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    goto :goto_8

    .line 185
    :cond_14
    sget-object v5, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v10, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 186
    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 187
    invoke-virtual {v7, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 189
    :goto_8
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/4 v10, 0x5

    const/high16 v17, 0x437f0000    # 255.0f

    if-ne v3, v13, :cond_15

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16

    :cond_15
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v3, v13, :cond_1b

    :cond_16
    if-ne v2, v12, :cond_17

    .line 192
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 193
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    goto :goto_9

    .line 195
    :cond_17
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    invoke-static {v7, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 196
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    aget-object v2, v2, v3

    .line 198
    :goto_9
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v3, v13, :cond_18

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_18

    move v3, v13

    goto :goto_a

    :cond_18
    const/4 v3, 0x0

    .line 200
    :goto_a
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    goto :goto_b

    :cond_19
    move v5, v15

    :goto_b
    if-eqz v3, :cond_1a

    .line 202
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v5, v3

    .line 203
    iget-object v3, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sub-float v18, v4, v14

    mul-float v15, v18, v17

    float-to-int v15, v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    .line 205
    :cond_1a
    iget-object v3, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    mul-float v15, v14, v17

    float-to-int v15, v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v15, v4, v14

    mul-float/2addr v3, v15

    add-float/2addr v5, v3

    .line 208
    :goto_c
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 209
    invoke-virtual {v3, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v8, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V

    .line 213
    :cond_1b
    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v2, v12, :cond_1c

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1d

    :cond_1c
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v3, v12, :cond_39

    :cond_1d
    if-ne v2, v12, :cond_1e

    .line 214
    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1e

    move v2, v13

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    .line 216
    :goto_d
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 217
    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(Z)V

    .line 218
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v3, v3, v5

    goto :goto_e

    .line 220
    :cond_1f
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint()V

    .line 221
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 225
    :goto_e
    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    const/16 v15, 0xff

    if-eqz v5, :cond_20

    .line 226
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v5

    invoke-static {v7, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v5

    .line 227
    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v12

    .line 229
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint()V

    move-object/from16 v18, v5

    goto :goto_f

    :cond_20
    const/4 v12, 0x0

    const/16 v18, 0x0

    .line 233
    :goto_f
    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v5, :cond_22

    .line 234
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/high16 v5, 0x40600000    # 3.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    :goto_10
    neg-float v5, v5

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    goto :goto_11

    .line 236
    :cond_22
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v5

    if-eqz v5, :cond_21

    const v5, 0x402ccccd    # 2.7f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    goto :goto_10

    :goto_11
    if-eqz v2, :cond_23

    .line 239
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v5, v2

    sub-float v2, v4, v14

    mul-float v2, v2, v17

    float-to-int v2, v2

    .line 240
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_12

    :cond_23
    mul-float v2, v14, v17

    float-to-int v2, v2

    .line 242
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v20, v4, v14

    mul-float v2, v2, v20

    add-float/2addr v5, v2

    .line 245
    :goto_12
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 246
    invoke-virtual {v2, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 247
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v4, :cond_38

    .line 248
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint()V

    .line 249
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(Z)V

    .line 250
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v4

    if-nez v4, :cond_24

    const/4 v5, 0x2

    goto :goto_13

    :cond_24
    move v5, v13

    .line 251
    :goto_13
    iput v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    move/from16 v21, v11

    .line 252
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v10

    .line 254
    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v5, :cond_25

    .line 255
    invoke-virtual {v9}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_14
    move v11, v5

    goto :goto_16

    :cond_25
    if-eqz v10, :cond_27

    .line 257
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v13, :cond_26

    goto :goto_15

    :cond_26
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_14

    :cond_27
    :goto_15
    move v5, v13

    goto :goto_14

    :goto_16
    if-ne v11, v13, :cond_29

    .line 261
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_17

    :cond_28
    move-object/from16 v18, v3

    :goto_17
    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p2

    move-object v1, v2

    move-object v9, v2

    move-object/from16 v2, v18

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v5, p5

    .line 266
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    move-object v1, v9

    .line 269
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    move v15, v10

    goto/16 :goto_23

    :cond_29
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v2, 0x43b40000    # 360.0f

    int-to-float v3, v11

    div-float v20, v2, v3

    const/16 v2, 0x14

    if-le v11, v2, :cond_2a

    const/4 v2, 0x3

    goto :goto_18

    :cond_2a
    const/4 v2, 0x5

    :goto_18
    int-to-float v2, v2

    .line 274
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    mul-float/2addr v2, v3

    cmpl-float v3, v2, v20

    if-lez v3, :cond_2b

    const/4 v2, 0x2

    const/16 v22, 0x0

    goto :goto_19

    :cond_2b
    move/from16 v22, v2

    const/4 v2, 0x2

    :goto_19
    if-ne v4, v2, :cond_2c

    .line 280
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 281
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    :goto_1a
    move-object v4, v2

    goto :goto_1b

    :cond_2c
    if-ne v4, v13, :cond_2d

    .line 283
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    invoke-static {v7, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 284
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_1a

    .line 286
    :cond_2d
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v2, v2, v3

    goto :goto_1a

    :cond_2e
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_1a

    .line 289
    :goto_1b
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_1c

    :cond_2f
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v15, 0x0

    invoke-virtual {v3, v0, v1, v15}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :goto_1c
    move v2, v15

    :goto_1d
    if-ge v2, v11, :cond_37

    .line 291
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v0, v0, v1

    goto :goto_1e

    :cond_30
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 292
    :goto_1e
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v1, :cond_32

    .line 293
    invoke-virtual {v9}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v16, v11, -0x1

    sub-int v5, v16, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move/from16 v23, v14

    iget-wide v13, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v9, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_31

    move-object v0, v12

    goto :goto_1f

    :cond_31
    const/4 v5, 0x1

    if-ne v1, v5, :cond_33

    move-object/from16 v0, v18

    goto :goto_1f

    :cond_32
    move/from16 v23, v14

    const/4 v13, 0x2

    .line 300
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    if-nez v1, :cond_34

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v1, v3, :cond_33

    goto :goto_20

    :cond_33
    :goto_1f
    move-object v14, v0

    goto :goto_21

    .line 301
    :cond_34
    :goto_20
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-eqz v0, :cond_35

    move-object v14, v12

    goto :goto_21

    :cond_35
    move-object/from16 v14, v18

    :goto_21
    int-to-float v0, v2

    mul-float v0, v0, v20

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    add-float v1, v0, v20

    add-float v19, v0, v22

    sub-float v24, v1, v22

    .line 313
    sget-object v25, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v26, v2

    move-object v2, v14

    move/from16 v27, v3

    move/from16 v3, v19

    move-object v5, v4

    move/from16 v4, v24

    move-object v13, v5

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 314
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_36

    if-eq v14, v13, :cond_36

    .line 315
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 317
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    sub-float v4, v15, v0

    mul-float v4, v4, v17

    float-to-int v0, v4

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object v2, v13

    move/from16 v3, v19

    move/from16 v4, v24

    move-object/from16 v5, p5

    .line 318
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    const/16 v0, 0xff

    .line 320
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_22

    :cond_36
    const/16 v0, 0xff

    :goto_22
    add-int/lit8 v2, v26, 0x1

    move-object v4, v13

    move v5, v15

    move/from16 v14, v23

    move/from16 v3, v27

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1d

    :cond_37
    move v15, v5

    goto :goto_23

    :cond_38
    move/from16 v21, v11

    move/from16 v23, v14

    const/high16 v15, 0x3f800000    # 1.0f

    .line 325
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v0, v8, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V

    goto :goto_24

    :cond_39
    move v15, v4

    move/from16 v21, v11

    :goto_23
    move/from16 v23, v14

    .line 328
    :goto_24
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_3b

    :cond_3a
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v0, v1, :cond_3f

    .line 330
    :cond_3b
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 331
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v7, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 332
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_25

    .line 334
    :cond_3c
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint()V

    .line 335
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    :goto_25
    mul-float v14, v23, v17

    float-to-int v2, v14

    .line 337
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3d

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_3d

    move v10, v1

    goto :goto_26

    :cond_3d
    const/4 v10, 0x0

    :goto_26
    if-eqz v10, :cond_3e

    const/4 v1, 0x7

    .line 341
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v23

    const/4 v3, 0x0

    add-float/2addr v1, v3

    sub-float v4, v15, v23

    mul-float v4, v4, v17

    float-to-int v2, v4

    .line 342
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_27

    :cond_3e
    const/4 v3, 0x0

    .line 344
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x5

    .line 345
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v15, v23

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 347
    :goto_27
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 348
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v6, v8, v1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V

    .line 352
    :cond_3f
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 354
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v0, v15

    if-eqz v1, :cond_41

    .line 355
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_40

    .line 357
    iput v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 359
    :cond_40
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 360
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 361
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_41
    if-eqz v21, :cond_42

    move/from16 v10, v21

    .line 365
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_42
    return-void
.end method

.method private static drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V
    .locals 8

    .line 457
    iget p1, p2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p2, :cond_0

    .line 458
    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p2, v1, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 460
    :cond_0
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float p2, p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float v4, p2, v0

    sub-float v5, v0, p1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 12

    .line 390
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$200(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 391
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 393
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_0

    .line 394
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v4, p2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 396
    :cond_0
    sget-object v7, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v8, p2, v0

    const/high16 p2, -0x3c4c0000    # -360.0f

    iget v0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v9, v0, p2

    const/4 v10, 0x0

    move-object v6, p0

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    int-to-float v0, p2

    const/high16 v1, 0x41b40000    # 22.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v0, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, v2

    sub-float v5, v1, v0

    .line 403
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v4, v1, v0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 10

    .line 465
    iget-boolean v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    iget-boolean v3, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-nez v3, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 467
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v0, p5

    div-float v8, v0, v2

    div-float v9, p5, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_0

    .line 469
    :cond_0
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v0, p5

    div-float/2addr v0, v2

    add-float v8, v0, v1

    div-float/2addr p5, v2

    add-float v9, p5, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_0

    .line 471
    :cond_1
    iget-boolean v3, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-eqz v3, :cond_2

    .line 472
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v0, p5

    div-float/2addr v0, v2

    add-float v8, v0, v1

    div-float/2addr p5, v2

    add-float v9, p5, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 475
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v0, p5

    div-float v8, v0, v2

    div-float v9, p5, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_0

    :cond_3
    sub-float v3, p4, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;
    .locals 4

    .line 496
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 497
    new-instance v1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    aput-object v1, v0, p1

    .line 498
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 499
    aget-object v1, v0, p1

    iput-boolean v2, v1, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz p1, :cond_0

    .line 501
    aget-object v0, v0, p1

    const v1, -0xb512ab

    const v2, -0xb23c01

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    goto :goto_0

    .line 503
    :cond_0
    aget-object v0, v0, p1

    const v1, -0xc620c4

    const v2, -0xb24401

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 505
    :goto_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 507
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 509
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 510
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 514
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 516
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 517
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    const v1, -0x3614c8

    const v2, -0xf63e99

    .line 518
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 519
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 520
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 521
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 523
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 524
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getExpiredStoryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 595
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0x168

    const/16 v1, 0xb4

    .line 596
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, -0x777778

    .line 597
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 598
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 600
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 601
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, -0x1000000

    const/16 v4, 0x64

    .line 602
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v3, 0x42ac0000    # 86.0f

    const-string v4, "expired"

    const/high16 v5, 0x43340000    # 180.0f

    .line 603
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42d40000    # 106.0f

    const-string v4, "story"

    .line 604
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 605
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 607
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static getInset(II)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 487
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x4

    .line 489
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I
    .locals 4

    .line 371
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 376
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-lez v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v2, :cond_2

    .line 377
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    .line 378
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-le p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public static getStoryImageFilter()Ljava/lang/String;
    .locals 3

    .line 737
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 738
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_0

    .line 613
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    const-string v0, "StoryEditing"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 615
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v0, "UploadingStory"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "\u2026"

    .line 617
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 619
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 620
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 621
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 622
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    :cond_1
    return-object p2
.end method

.method public static hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 691
    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    const v2, 0x15180

    add-int/2addr p0, v2

    if-le v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 0

    .line 733
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 1

    const-string v0, "320_320"

    .line 546
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;)V

    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;)V
    .locals 14

    move-object v11, p1

    if-nez v11, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .line 554
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 555
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 557
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 558
    :goto_0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_3

    .line 559
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    const v3, 0x3e4ccccd    # 0.2f

    .line 560
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v3, p0

    .line 561
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    move-object v3, p0

    if-eqz v2, :cond_4

    .line 562
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 563
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 564
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v9

    move-object v10, v12

    move-object v11, p1

    move v12, v13

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 11

    .line 572
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "320_180"

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "320_180"

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public static setStoryMiniImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 532
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 533
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v2, "100_100"

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 535
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 536
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 537
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 538
    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v13, "100_100"

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v13

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 540
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method

.method public static setThumbImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;II)V
    .locals 16

    move-object/from16 v11, p1

    move/from16 v0, p2

    move/from16 v1, p3

    .line 580
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v3, "_"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_0

    .line 581
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2, v7, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 582
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 584
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_2

    .line 585
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 586
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7, v8, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 587
    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-wide v8, v12

    move-object v10, v14

    move-object/from16 v11, p1

    move v12, v15

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method
