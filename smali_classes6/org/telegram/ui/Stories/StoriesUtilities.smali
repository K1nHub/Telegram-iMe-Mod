.class public Lorg/telegram/ui/Stories/StoriesUtilities;
.super Ljava/lang/Object;
.source "StoriesUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;,
        Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;,
        Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
    }
.end annotation


# static fields
.field public static closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field static debugRunnable:Ljava/lang/Runnable;

.field static debugState:I

.field public static errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field public static expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

.field public static grayLastColor:I

.field public static grayPaint:Landroid/graphics/Paint;

.field private static final rectTmp:Landroid/graphics/RectF;

.field public static storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

.field public static storyCellGrayLastColor:I

.field public static storyCellGreyPaint:[Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$3GBglEVdoG0XkVYsGefeXSWrMwU(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->lambda$ensureStoryFileLoaded$0(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPALdcbig9DvjGGYSy3Ccs94HFM([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->lambda$ensureStoryFileLoaded$1([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/telegram/ui/Components/GradientTools;

    .line 61
    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    new-array v0, v0, [Landroid/graphics/Paint;

    .line 68
    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 82
    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    .line 83
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$1;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 786
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    const-string v0, "StoryEditing"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 788
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v0, "UploadingStory"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "\u2026"

    .line 790
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 792
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 793
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 794
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 795
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    .line 796
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 798
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_1
    return-void
.end method

.method public static applyViewedUser(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 852
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

    .line 853
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-nez v0, :cond_1

    .line 854
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyViews;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    .line 856
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 857
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    .line 858
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 532
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 534
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 538
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 539
    sget v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    if-eq v0, p0, :cond_4

    .line 540
    sput p0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    .line 541
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const v2, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_3

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_2

    .line 545
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 547
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v2, 0x3ee147ae    # 0.44f

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 550
    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 508
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v1, v0, p0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 509
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p0

    .line 510
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 511
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 512
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    if-nez p0, :cond_1

    .line 514
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    .line 515
    sget v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    if-eq v0, p1, :cond_5

    .line 516
    sput p1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    .line 517
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const v1, 0x3e4ccccd    # 0.2f

    if-eqz v2, :cond_4

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v2

    const/4 v2, -0x1

    if-gez v0, :cond_3

    .line 521
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    invoke-static {p1, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 523
    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const v0, 0x3ee147ae    # 0.44f

    invoke-static {p1, v2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 526
    :cond_4
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const/high16 v0, -0x1000000

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static createExpiredStoryString()Ljava/lang/CharSequence;
    .locals 4

    .line 817
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

    .line 821
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 822
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 823
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_bomb:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p0, :cond_0

    const p0, 0x3f4ccccd    # 0.8f

    .line 825
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(F)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 827
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :goto_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    .line 829
    invoke-virtual {v0, p1, p2, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createReplyStoryString()Ljava/lang/CharSequence;
    .locals 4

    .line 834
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 835
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    const-string v3, "Story"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 836
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory2:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 837
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

    .line 869
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v10, 0x1

    sub-float v3, v0, v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    .line 871
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 874
    :goto_0
    invoke-static {p3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v0, 0x43b40000    # 360.0f

    add-float v0, p5, v0

    .line 875
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

    .line 878
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    sub-float v3, v0, v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 883
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 7

    .line 76
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    .line 78
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
    .locals 26

    move-wide/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    .line 99
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v10

    .line 100
    iget-boolean v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 101
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    .line 102
    invoke-static {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$002(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;J)J

    .line 103
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->reset()V

    move v2, v11

    .line 113
    :cond_0
    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLoading(J)Z

    move-result v3

    .line 115
    iget-boolean v4, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v10}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v4

    goto :goto_0

    :cond_1
    move/from16 v4, p4

    .line 119
    :goto_0
    iget-object v5, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v5, :cond_2

    .line 120
    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v10, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move v3, v11

    :cond_2
    const/4 v12, 0x3

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    .line 127
    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v11

    move v5, v12

    const/4 v2, 0x2

    goto :goto_2

    .line 130
    :cond_3
    invoke-static {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v2

    move v4, v11

    move v5, v12

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_7

    .line 133
    iget-boolean v4, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v4, :cond_5

    move v4, v2

    const/4 v2, 0x2

    const/4 v5, 0x2

    goto :goto_2

    .line 137
    :cond_5
    iget v4, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v10, v0, v1, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result v4

    if-nez v4, :cond_6

    const/4 v5, 0x2

    goto :goto_1

    :cond_6
    move v5, v14

    :goto_1
    move/from16 v25, v4

    move v4, v2

    move/from16 v2, v25

    goto :goto_2

    .line 141
    :cond_7
    invoke-static {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v4

    move v5, v4

    move v4, v2

    move v2, v5

    .line 144
    :goto_2
    iget v6, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eq v6, v5, :cond_b

    if-ne v6, v12, :cond_8

    move v4, v14

    :cond_8
    if-ne v5, v12, :cond_9

    .line 149
    iput v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 150
    iput v15, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    :cond_9
    if-eqz v4, :cond_a

    .line 153
    iput v6, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    .line 155
    iput v5, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 156
    iput v15, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    goto :goto_3

    .line 158
    :cond_a
    iput v5, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 159
    iput v13, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 163
    :cond_b
    :goto_3
    iput v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    .line 165
    iget-object v4, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v6, 0x3da3d70a    # 0.08f

    if-eqz v4, :cond_c

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v4

    goto :goto_4

    :cond_c
    move v4, v13

    .line 166
    :goto_4
    iget-boolean v5, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    if-eq v5, v3, :cond_d

    if-eqz v3, :cond_d

    .line 167
    iput v13, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    .line 168
    iput-boolean v11, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    .line 170
    :cond_d
    iput-boolean v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    .line 171
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/StoriesController;->isContactsAvatarsEnabled()Z

    move-result v3

    const-wide/16 v16, 0x0

    if-nez v3, :cond_e

    cmp-long v3, v0, v16

    if-gtz v3, :cond_10

    :cond_e
    cmp-long v0, v0, v16

    if-gez v0, :cond_f

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/StoriesController;->isChannelsAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v0, :cond_11

    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_11

    .line 172
    :cond_10
    iget-object v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 173
    invoke-virtual {v8, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    :cond_11
    cmpl-float v0, v4, v13

    if-eqz v0, :cond_12

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 179
    iget-object v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v4, v4, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v5, v0

    goto :goto_5

    :cond_12
    move v5, v11

    .line 182
    :goto_5
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v0, v13

    if-eqz v1, :cond_13

    .line 184
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_13
    move/from16 v16, v0

    .line 186
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_14

    move v0, v15

    goto :goto_6

    :cond_14
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 187
    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 188
    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v1

    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 186
    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    :goto_6
    cmpl-float v1, v0, v15

    if-nez v1, :cond_15

    .line 192
    iget-object v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    goto :goto_7

    .line 194
    :cond_15
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 195
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 196
    invoke-virtual {v8, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 198
    :goto_7
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/16 v17, 0x5

    const/high16 v18, 0x437f0000    # 255.0f

    if-ne v0, v14, :cond_16

    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_17

    :cond_16
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v0, v14, :cond_1c

    :cond_17
    const/4 v0, 0x2

    if-ne v2, v0, :cond_18

    .line 201
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 202
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    goto :goto_8

    .line 204
    :cond_18
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v8, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 205
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    aget-object v0, v0, v1

    .line 207
    :goto_8
    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v1, v14, :cond_19

    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_19

    move v1, v14

    goto :goto_9

    :cond_19
    move v1, v11

    .line 209
    :goto_9
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_a

    :cond_1a
    move v2, v15

    :goto_a
    if-eqz v1, :cond_1b

    .line 211
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v2, v1

    .line 212
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v18

    sub-float v4, v13, v16

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    .line 214
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v18

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v13, v16

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 217
    :goto_b
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static {v7, v1, v9, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V

    .line 222
    :cond_1c
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/high16 v19, 0x40600000    # 3.5f

    const v20, 0x402ccccd    # 2.7f

    const/16 v21, 0x0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_1e

    :cond_1d
    iget v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v2, v1, :cond_26

    :cond_1e
    if-ne v0, v1, :cond_1f

    .line 223
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_1f

    move v0, v14

    goto :goto_c

    :cond_1f
    move v0, v11

    .line 225
    :goto_c
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 226
    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 227
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_d

    .line 229
    :cond_20
    iget-object v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 230
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    :goto_d
    move-object v4, v1

    .line 234
    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v1, :cond_21

    .line 235
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    invoke-static {v8, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v1

    .line 236
    iget v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v2

    .line 238
    iget v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    iget-object v3, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    goto :goto_e

    :cond_21
    move-object/from16 v22, v21

    move-object/from16 v23, v22

    .line 242
    :goto_e
    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v1, :cond_23

    .line 243
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v1, :cond_22

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    :goto_f
    neg-float v1, v1

    goto :goto_10

    :cond_22
    move v1, v15

    goto :goto_10

    .line 245
    :cond_23
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v1, :cond_22

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    goto :goto_f

    :goto_10
    if-eqz v0, :cond_24

    .line 248
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    add-float/2addr v1, v0

    .line 249
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    sub-float v2, v13, v16

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11

    .line 251
    :cond_24
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    mul-float v0, v0, v16

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v13, v16

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 254
    :goto_11
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 255
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 256
    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_25

    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move v11, v5

    move-object/from16 v5, v22

    move/from16 v22, v6

    move-object/from16 v6, v23

    .line 257
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_12

    :cond_25
    move v11, v5

    move/from16 v22, v6

    .line 259
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v7, v0, v9, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V

    goto :goto_12

    :cond_26
    move v11, v5

    move/from16 v22, v6

    .line 262
    :goto_12
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v0, v12, :cond_27

    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_28

    :cond_27
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v0, v12, :cond_34

    .line 264
    :cond_28
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    if-ne v0, v14, :cond_29

    .line 265
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v8, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 266
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_13

    .line 268
    :cond_29
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 269
    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 270
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v0, v0, v1

    goto :goto_13

    .line 272
    :cond_2a
    iget-object v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 273
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    :goto_13
    move-object v4, v0

    mul-float v0, v16, v18

    float-to-int v0, v0

    .line 276
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_2b

    .line 281
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v8, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v0

    .line 282
    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v18

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    .line 284
    iget v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v5, v0

    move-object v6, v1

    goto :goto_14

    :cond_2b
    move-object/from16 v5, v21

    move-object v6, v5

    .line 288
    :goto_14
    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_2c

    .line 289
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_2d

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    :goto_15
    neg-float v15, v0

    goto :goto_16

    .line 291
    :cond_2c
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_2d

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    goto :goto_15

    .line 293
    :cond_2d
    :goto_16
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v0, v12, :cond_2e

    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_2e

    move/from16 v24, v14

    goto :goto_17

    :cond_2e
    const/16 v24, 0x0

    :goto_17
    if-eqz v24, :cond_2f

    const/4 v0, 0x7

    .line 295
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    add-float/2addr v15, v0

    .line 296
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    sub-float v1, v13, v16

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_18

    .line 298
    :cond_2f
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    mul-float v0, v0, v16

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v13, v16

    mul-float/2addr v0, v1

    add-float/2addr v15, v0

    .line 301
    :goto_18
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 302
    invoke-virtual {v0, v15, v15}, Landroid/graphics/RectF;->inset(FF)V

    .line 303
    iget-boolean v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_31

    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v1, v12, :cond_31

    iget v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v2, v1, v13

    if-eqz v2, :cond_31

    add-float v1, v1, v22

    .line 304
    iput v1, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v0, v1, v13

    if-lez v0, :cond_30

    .line 306
    iput v13, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    .line 308
    :cond_30
    iget v12, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 309
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    sub-float v0, v13, v0

    iput v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 310
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 311
    iput v12, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 312
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 313
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 314
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1a

    :cond_31
    if-eqz v0, :cond_33

    .line 318
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    move-object v4, v6

    goto :goto_19

    :cond_32
    if-ne v0, v14, :cond_33

    move-object v4, v5

    .line 325
    :cond_33
    :goto_19
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v7, v9, v0, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V

    .line 329
    :cond_34
    :goto_1a
    invoke-virtual {v8, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 331
    iget v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v0, v13

    if-eqz v1, :cond_36

    .line 332
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_35

    .line 334
    iput v13, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 336
    :cond_35
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 337
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 338
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_36
    if-eqz v11, :cond_37

    .line 342
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_37
    return-void
.end method

.method private static drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;)V
    .locals 8

    .line 556
    iget p1, p2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p2, :cond_0

    .line 557
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

    .line 559
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

    .line 489
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$200(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 490
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 492
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_0

    .line 493
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v4, p2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 495
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

    .line 502
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

    .line 564
    iget-boolean v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    iget-boolean v3, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-nez v3, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 566
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

    .line 568
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

    .line 570
    :cond_1
    iget-boolean v3, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-eqz v3, :cond_2

    .line 571
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

    .line 574
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

    .line 576
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    .line 347
    iget-object v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 348
    iget-boolean v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 350
    iget-wide v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialog:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    goto :goto_0

    .line 353
    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v9

    .line 356
    :goto_1
    iput v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    .line 357
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$PeerStories;

    move-result-object v2

    if-nez v2, :cond_2

    .line 359
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/TLRPC$PeerStories;

    move-result-object v2

    :cond_2
    move-object v10, v2

    .line 362
    iget-boolean v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_3

    .line 363
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    move v11, v2

    goto :goto_4

    :cond_3
    if-eqz v10, :cond_5

    .line 365
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v9, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_2

    :cond_5
    :goto_3
    move v2, v9

    goto :goto_2

    :goto_4
    if-ne v1, v8, :cond_6

    .line 369
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 370
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    :goto_5
    move-object v12, v1

    goto :goto_6

    :cond_6
    if-ne v1, v9, :cond_7

    .line 372
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 373
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_5

    .line 375
    :cond_7
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_5

    :cond_8
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_5

    :goto_6
    const/16 v13, 0xff

    const/high16 v14, 0x437f0000    # 255.0f

    const/high16 v15, 0x3f800000    # 1.0f

    if-gt v11, v9, :cond_a

    .line 379
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v6, p5

    goto :goto_7

    :cond_9
    move-object/from16 v6, p4

    :goto_7
    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    .line 384
    sget-object v8, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v6

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    .line 387
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 389
    iget v0, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v1, v0, v15

    if-eqz v1, :cond_15

    if-eq v6, v12, :cond_15

    sub-float/2addr v15, v0

    mul-float/2addr v15, v14

    float-to-int v0, v15

    .line 390
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object/from16 v5, p3

    .line 393
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    .line 396
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 397
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_f

    :cond_a
    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v2, v11

    div-float v16, v1, v2

    const/16 v1, 0x14

    if-le v11, v1, :cond_b

    const/4 v1, 0x3

    goto :goto_8

    :cond_b
    const/4 v1, 0x5

    :goto_8
    int-to-float v1, v1

    .line 403
    iget v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    mul-float/2addr v1, v2

    cmpl-float v2, v1, v16

    if-lez v2, :cond_c

    const/4 v1, 0x0

    :cond_c
    move/from16 v17, v1

    .line 409
    iget-boolean v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move v6, v2

    goto :goto_9

    :cond_d
    iget v1, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->max_read_id:I

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    :goto_9
    move v5, v2

    :goto_a
    if-ge v5, v11, :cond_15

    .line 411
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_b

    :cond_e
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 412
    :goto_b
    iget-boolean v2, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_10

    .line 413
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v11, -0x1

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PeerStories;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v2

    if-ne v2, v8, :cond_f

    move-object/from16 v1, p6

    goto :goto_c

    :cond_f
    if-ne v2, v9, :cond_11

    move-object/from16 v1, p5

    goto :goto_c

    .line 420
    :cond_10
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    if-nez v2, :cond_12

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v2, v6, :cond_11

    goto :goto_d

    :cond_11
    :goto_c
    move-object v4, v1

    goto :goto_e

    .line 421
    :cond_12
    :goto_d
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-eqz v1, :cond_13

    move-object/from16 v4, p6

    goto :goto_e

    :cond_13
    move-object/from16 v4, p5

    :goto_e
    int-to-float v1, v5

    mul-float v1, v1, v16

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    add-float v2, v1, v16

    add-float v18, v1, v17

    sub-float v19, v2, v17

    .line 433
    sget-object v20, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v4

    move-object v8, v4

    move/from16 v4, v18

    move/from16 v21, v5

    move/from16 v5, v19

    move/from16 v22, v6

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 434
    iget v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_14

    if-eq v8, v12, :cond_14

    .line 435
    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 437
    iget v1, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    sub-float v1, v15, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v12

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, p3

    .line 438
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 440
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_14
    add-int/lit8 v5, v21, 0x1

    move/from16 v6, v22

    const/4 v8, 0x2

    goto/16 :goto_a

    :cond_15
    :goto_f
    return-void
.end method

.method public static ensureStoryFileLoaded(Lorg/telegram/tgnet/TLRPC$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 917
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 922
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 923
    iget-object v3, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 925
    :goto_0
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 926
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v6, v3, :cond_1

    .line 927
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    .line 932
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 935
    :cond_3
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v6, 0x7fffffff

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_5

    .line 936
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v9, v7, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 937
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 938
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    .line 941
    :cond_4
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v9, v7, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 944
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    .line 946
    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".temp"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_7

    .line 948
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    if-eqz v5, :cond_6

    .line 957
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_6
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_b

    .line 958
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    .line 959
    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 960
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    invoke-virtual {v9, v5, v7, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 961
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 962
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    .line 971
    :catch_0
    :cond_7
    new-instance v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    invoke-direct {v15, v2, v9, v10, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/ui/Stories/StoriesUtilities$1;)V

    .line 972
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;

    move-object/from16 v2, p1

    invoke-direct {v0, v15, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V

    iput-object v0, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    new-array v0, v8, [Ljava/lang/Runnable;

    .line 979
    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    aput-object v2, v0, v4

    .line 986
    aget-object v2, v0, v4

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 987
    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$2;

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/Stories/StoriesUtilities$2;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    iput-object v2, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 999
    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1000
    iget-object v0, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1002
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v9

    .line 1004
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_8

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_8

    .line 1005
    iget-object v5, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pframe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object v14, v3

    move-object v2, v15

    move v15, v0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_8
    move-object v2, v15

    if-eqz v0, :cond_9

    .line 1007
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_3

    :cond_9
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_a

    .line 1008
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    .line 1009
    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 1010
    iget-object v5, v2, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    return-object v2

    .line 1012
    :cond_a
    iget-object v0, v2, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_b
    move-object/from16 v2, p1

    .line 966
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_c
    :goto_5
    move-object/from16 v2, p1

    .line 918
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1
.end method

.method public static getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;
    .locals 4

    .line 595
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 596
    new-instance v1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    aput-object v1, v0, p1

    .line 597
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 598
    aget-object v1, v0, p1

    iput-boolean v2, v1, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz p1, :cond_0

    .line 600
    aget-object v0, v0, p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    goto :goto_0

    .line 602
    :cond_0
    aget-object v0, v0, p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 604
    :goto_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 605
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 606
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 608
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

    .line 609
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 631
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 633
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 634
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 635
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 636
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 637
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 638
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 640
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

    .line 641
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;
    .locals 4

    .line 662
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 664
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 665
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 666
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 667
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 668
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 669
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 670
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 671
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 672
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 674
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 675
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 645
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 647
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 648
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 649
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 650
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 651
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 652
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 653
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 654
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 657
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 658
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getExpiredStoryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 749
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0x168

    const/16 v1, 0xb4

    .line 750
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, -0x777778

    .line 751
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 752
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 753
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 754
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 755
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, -0x1000000

    const/16 v4, 0x64

    .line 756
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v3, 0x42ac0000    # 86.0f

    const-string v4, "expired"

    const/high16 v5, 0x43340000    # 180.0f

    .line 757
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42d40000    # 106.0f

    const-string v4, "story"

    .line 758
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 759
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 761
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

    .line 586
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x4

    .line 588
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_4

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->isContactsAvatarsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 456
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 457
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-lez v4, :cond_3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v4, :cond_3

    .line 458
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    .line 459
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-le p1, p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    return v1

    .line 469
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->isChannelsAvatarsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 473
    :cond_5
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 474
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:I

    if-lez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    if-nez v4, :cond_7

    .line 475
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    .line 476
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:I

    if-le p1, p0, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public static getStoryImageFilter()Ljava/lang/String;
    .locals 3

    .line 891
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 892
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 893
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

    .line 767
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    const-string v0, "StoryEditing"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 769
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v0, "UploadingStory"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "\u2026"

    .line 771
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 773
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 774
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 775
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 776
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    :cond_1
    return-object p2
.end method

.method public static hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 845
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

    .line 887
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

.method private static synthetic lambda$ensureStoryFileLoaded$0(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 973
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->access$400(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 976
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$ensureStoryFileLoaded$1([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 980
    aput-object v1, p0, v0

    .line 981
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 982
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p0, :cond_0

    .line 983
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 1

    const-string v0, "320_320"

    .line 697
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;)V

    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;)V
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p1

    if-nez v14, :cond_0

    return-void

    .line 704
    :cond_0
    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .line 705
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 706
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 707
    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 709
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 710
    :goto_0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_3

    .line 711
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    const v3, 0x3e4ccccd    # 0.2f

    .line 712
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 713
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 714
    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 715
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 716
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 717
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 718
    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    goto :goto_1

    .line 720
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 11

    .line 726
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 727
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

    .line 729
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

    .line 682
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 683
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 684
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

    .line 686
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 687
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 688
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 689
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

    .line 691
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

    .line 734
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v3, "_"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_0

    .line 735
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2, v7, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 736
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

    .line 738
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_2

    .line 739
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 740
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7, v8, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 741
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

    .line 743
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method

.method public static updateColors()V
    .locals 3

    .line 613
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_0

    .line 614
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 616
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 617
    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 619
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 620
    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 622
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_3

    .line 623
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 624
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 625
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 626
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_3
    return-void
.end method
