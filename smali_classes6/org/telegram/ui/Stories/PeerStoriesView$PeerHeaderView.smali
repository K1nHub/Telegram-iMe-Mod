.class public Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;
.super Landroid/widget/FrameLayout;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerHeaderView"
.end annotation


# instance fields
.field public backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private progressToUploading:F

.field radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field radialProgressPaint:Landroid/graphics/Paint;

.field storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

.field private subtitleAnimator:Landroid/animation/ValueAnimator;

.field private subtitleView:[Landroid/widget/TextView;

.field public titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private uploadedTooFast:Z

.field private uploading:Z


# direct methods
.method public static synthetic $r8$lambda$UnWaJXObIgiIURWU1xk4M28iEaQ(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->lambda$setSubtitle$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V
    .locals 11

    .line 5042
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/TextView;

    .line 5032
    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    .line 5043
    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    .line 5044
    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x10

    .line 5054
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 5055
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 5056
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 5058
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xe

    .line 5059
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 5060
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5061
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 5062
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(I)V

    .line 5065
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 5066
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/16 v6, 0x36

    const/16 v8, 0x56

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, p2

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v0, :cond_0

    .line 5069
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v1

    .line 5070
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5071
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5072
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5073
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5074
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5075
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v5, p2, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5076
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/16 v7, 0x33

    const/16 v8, 0x12

    const/16 v9, 0x53

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5079
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)F
    .locals 0

    .line 5028
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;
    .locals 0

    .line 5028
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$setSubtitle$0(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 5110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 5111
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5112
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 5113
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5114
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 5138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5141
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawUploadingProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 5145
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v5, :cond_1

    :cond_0
    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_c

    :cond_1
    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 5148
    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v3, :cond_3

    iget-boolean v10, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-nez v10, :cond_3

    .line 5149
    iput v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    .line 5150
    iget v3, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 5152
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    if-nez v10, :cond_2

    .line 5153
    iput-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    :cond_2
    move v10, v7

    goto :goto_1

    .line 5157
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    if-eqz v3, :cond_5

    .line 5158
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    .line 5159
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v3

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v10

    if-gez v3, :cond_4

    move v3, v8

    goto :goto_0

    :cond_4
    move v3, v7

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    .line 5161
    :cond_5
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    if-nez v3, :cond_6

    .line 5162
    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float v10, v6, v10

    div-float/2addr v10, v5

    sub-float/2addr v3, v10

    invoke-static {v3, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    :cond_6
    move v10, v8

    move v3, v9

    .line 5165
    :goto_1
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v11, :cond_7

    .line 5166
    new-instance v11, Lorg/telegram/ui/Components/RadialProgress;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v12, 0x0

    .line 5167
    invoke-virtual {v11, v12, v8, v7}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 5169
    :cond_7
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    .line 5170
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    const/4 v12, 0x3

    .line 5171
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sub-float v14, v9, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 5172
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v12

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v15, v12

    float-to-int v15, v15

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v12

    float-to-int v7, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v13, v14, v15, v7, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 5176
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v10, :cond_8

    move v3, v9

    goto :goto_2

    :cond_8
    invoke-static {v3, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    :goto_2
    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 5177
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    if-eqz v2, :cond_9

    if-eqz v10, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    .line 5178
    iget v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v6, v3

    div-float/2addr v6, v5

    sub-float/2addr v2, v6

    invoke-static {v2, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    :cond_9
    if-eqz p3, :cond_c

    cmpl-float v2, p4, v9

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 5182
    invoke-static {v11, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v2

    .line 5183
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5184
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 5185
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 5187
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_b

    .line 5188
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    .line 5189
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5190
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5191
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5192
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5194
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    mul-float v3, v3, p4

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5195
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 5196
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method public setOnSubtitleClick(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 5087
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5088
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5089
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const p1, 0x30ffffff

    const/4 v1, 0x7

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 5083
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 5

    .line 5094
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5095
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5096
    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 5099
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5100
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v1, p2, v3

    aget-object p2, p2, v4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5101
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5102
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5103
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 5104
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5105
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5106
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5107
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 5108
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    .line 5109
    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5116
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5124
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5125
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5126
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5128
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5129
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5130
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5131
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5132
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
