.class public Lorg/telegram/ui/Stories/ProfileStoriesView;
.super Landroid/view/View;
.source "ProfileStoriesView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    }
.end annotation


# instance fields
.field private actionBarProgress:F

.field private attached:Z

.field private final avatarContainer:Landroid/view/View;

.field private final avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private final circles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;",
            ">;"
        }
    .end annotation
.end field

.field private final clipOutAvatar:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private count:I

.field private final currentAccount:I

.field private cy:F

.field private expandProgress:F

.field private expandRight:F

.field private expandY:F

.field private left:F

.field private mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

.field private newStoryBounce:Landroid/animation/ValueAnimator;

.field private newStoryBounceT:F

.field private final provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field private final readPaint:Landroid/graphics/Paint;

.field private readPaintAlpha:I

.field private final rect1:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private final rect3:Landroid/graphics/RectF;

.field private right:F

.field private final rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private final titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private unreadCount:I

.field private userFull:Lorg/telegram/tgnet/TLRPC$UserFull;

.field private final userId:J

.field w:F

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$8o1AKX9JiMyTPe768V0sjJv_6ok(Lorg/telegram/ui/Stories/ProfileStoriesView;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUAouIVU_bMOFM-UsFc0Qfugnug(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$vibrateNewStory$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cv2GeewBpAkyfPKIlPgBhovSY0c(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    .line 119
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 66
    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v10, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 68
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipOutAvatar:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    .line 375
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    .line 377
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    .line 379
    new-instance v15, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 380
    new-instance v15, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xf0

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 382
    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 759
    new-instance v15, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 811
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$2;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move/from16 v0, p2

    .line 121
    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    move-wide/from16 v0, p3

    .line 122
    iput-wide v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->userId:J

    move-object/from16 v0, p5

    .line 123
    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    move-object/from16 v0, p6

    .line 124
    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 126
    new-instance v0, Lorg/telegram/ui/Stories/StoriesGradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesGradientTools;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    .line 127
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v0, 0x5affffff

    .line 130
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 132
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 136
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x12

    .line 138
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const v1, 0x3ecccccd    # 0.4f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v12

    .line 139
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 140
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 142
    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 143
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    invoke-direct {v7, v13, v13}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/ProfileStoriesView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    .line 52
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/ProfileStoriesView;)F
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    return-void
.end method

.method private clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 633
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3fd47ae1    # 1.66f

    .line 634
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    .line 635
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 636
    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 637
    iget-object v3, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    .line 639
    iget-object v5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    cmpl-float v5, v1, v3

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43340000    # 180.0f

    if-lez v5, :cond_1

    sub-float/2addr v1, p3

    add-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 643
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 644
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    add-float/2addr v7, p3

    neg-float v3, p3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v0, v7, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    mul-float/2addr v2, p3

    sub-float/2addr v6, v2

    invoke-virtual {v0, p2, p3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    add-float/2addr v1, p3

    sub-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 649
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 650
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    neg-float v3, p3

    mul-float/2addr v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float/2addr v7, p3

    sub-float/2addr v6, v2

    neg-float p3, v6

    invoke-virtual {v0, p2, v7, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 654
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V
    .locals 22

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 678
    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_0
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 680
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 681
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    .line 682
    iget-object v9, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    cmpl-float v10, v6, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v10, :cond_1

    move v10, v11

    goto :goto_0

    :cond_1
    move v10, v12

    :goto_0
    if-eqz v10, :cond_2

    sub-float/2addr v6, v0

    add-float v0, v7, v8

    add-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    .line 688
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 689
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    goto :goto_1

    :cond_2
    add-float/2addr v6, v0

    sub-float v0, v7, v8

    add-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    .line 692
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 693
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    :goto_1
    double-to-float v0, v13

    move v15, v0

    cmpl-float v0, v9, v7

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v11, v12

    :goto_2
    if-eqz v11, :cond_4

    sub-float/2addr v9, v2

    add-float v0, v7, v8

    add-float/2addr v9, v0

    div-float/2addr v9, v5

    sub-float/2addr v9, v7

    .line 698
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 699
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    goto :goto_3

    :cond_4
    add-float/2addr v9, v2

    sub-float v0, v7, v8

    add-float/2addr v9, v0

    div-float/2addr v9, v5

    sub-float/2addr v9, v7

    .line 702
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 703
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    :goto_3
    double-to-float v0, v6

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 707
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 708
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float v5, v5, v18

    sub-float v19, v3, v5

    const/16 v20, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v0

    move-object/from16 v21, p5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_5
    if-eqz v10, :cond_6

    .line 710
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v0, v4

    add-float v2, v15, v0

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 711
    iget-object v14, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v0

    sub-float v16, v4, v15

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v18, p5

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_6
    if-eqz v11, :cond_7

    .line 713
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v15, v4

    add-float v2, v0, v15

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 714
    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v0

    sub-float v19, v4, v15

    const/16 v20, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move/from16 v18, v0

    move-object/from16 v21, p5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 716
    :cond_7
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 717
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v8, v0, v4

    mul-float/2addr v0, v5

    sub-float v9, v3, v0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    if-eqz v2, :cond_d

    :cond_9
    if-nez v0, :cond_a

    move-object v0, v2

    .line 724
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 725
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float v8, v2, v6

    .line 727
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float v9, v0, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 728
    iget-object v10, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    const/4 v13, 0x0

    move-object/from16 v9, p1

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_b
    cmpl-float v8, v2, v6

    if-lez v8, :cond_c

    sub-float/2addr v2, v0

    add-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    .line 733
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 734
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v10, v6

    .line 735
    iget-object v9, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float/2addr v5, v10

    sub-float v11, v3, v5

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_c
    add-float/2addr v2, v0

    sub-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    .line 738
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 739
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 740
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v8, v0, v4

    mul-float/2addr v0, v5

    sub-float v9, v3, v0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private synthetic lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 408
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 409
    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 410
    aput-boolean v1, p1, v0

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 413
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    .line 463
    iget p1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private synthetic lambda$vibrateNewStory$0()V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 394
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 3

    .line 747
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 748
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 750
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 751
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 749
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float p2, v0, p1

    sub-float p3, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 754
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 3

    if-eqz p3, :cond_5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 669
    iget-object v1, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateStories(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 163
    iget v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 169
    :cond_0
    iget-wide v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userId:J

    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 170
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userFull:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 171
    :goto_1
    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userId:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v6

    .line 173
    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    move-object v7, v4

    :goto_2
    if-eqz v4, :cond_4

    .line 182
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    if-eqz v6, :cond_5

    .line 185
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_5
    if-eqz v7, :cond_6

    .line 187
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    if-nez v9, :cond_7

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    .line 191
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    const/4 v12, 0x3

    if-eqz v9, :cond_13

    move v13, v2

    move v14, v13

    .line 193
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_a

    .line 194
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 195
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v2, :cond_8

    goto :goto_5

    .line 198
    :cond_8
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v2, v8, :cond_9

    .line 199
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    :cond_9
    add-int/lit8 v14, v14, 0x1

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 203
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_14

    .line 204
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 205
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v15, :cond_b

    goto/16 :goto_a

    .line 208
    :cond_b
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v15, :cond_10

    .line 209
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    .line 211
    :goto_7
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_d

    .line 212
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v3, v15, :cond_c

    .line 213
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-object v13, v3

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 218
    :cond_d
    :goto_8
    instance-of v3, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v3, :cond_f

    if-eqz v4, :cond_12

    const/4 v3, 0x0

    .line 220
    :goto_9
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 221
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v5, v15, :cond_e

    .line 222
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_a

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    if-nez v1, :cond_11

    .line 233
    iget v3, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v3, v8, :cond_12

    .line 234
    :cond_11
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v12, :cond_12

    goto :goto_b

    :cond_12
    :goto_a
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_6

    :cond_13
    const/4 v14, 0x0

    .line 241
    :cond_14
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v12, :cond_1c

    const/4 v2, 0x0

    .line 242
    :goto_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 243
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 244
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v5, :cond_19

    .line 245
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-eqz v6, :cond_16

    const/4 v8, 0x0

    .line 247
    :goto_d
    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_16

    .line 248
    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v13, v5, :cond_15

    .line 249
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_e

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 254
    :cond_16
    :goto_e
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v8, :cond_18

    if-eqz v4, :cond_1b

    const/4 v3, 0x0

    .line 256
    :goto_f
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1b

    .line 257
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v5, :cond_17

    .line 258
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_10

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_18
    if-eqz v8, :cond_19

    goto :goto_10

    .line 269
    :cond_19
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v5, :cond_1a

    goto :goto_10

    .line 272
    :cond_1a
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 273
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v12, :cond_1b

    goto :goto_11

    :cond_1b
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    :goto_11
    const/4 v2, 0x0

    .line 282
    :goto_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ge v2, v3, :cond_23

    .line 283
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v6, 0x0

    .line 287
    :goto_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1e

    .line 288
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 289
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v9, v12, :cond_1d

    goto :goto_14

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1e
    move v6, v5

    const/4 v8, 0x0

    :goto_14
    if-ne v6, v5, :cond_1f

    .line 298
    iput v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    goto :goto_17

    .line 300
    :cond_1f
    iput v6, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    if-nez v1, :cond_21

    if-eqz v7, :cond_20

    if-eqz v8, :cond_20

    .line 301
    iget v4, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-gt v4, v5, :cond_20

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    goto :goto_16

    :cond_21
    :goto_15
    const/4 v4, 0x1

    :goto_16
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    :goto_17
    if-nez p1, :cond_22

    .line 304
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    .line 309
    :goto_18
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 310
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v6, 0x0

    .line 313
    :goto_19
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_25

    .line 314
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 315
    iget v8, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v9, :cond_24

    goto :goto_1a

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_25
    move v6, v5

    :goto_1a
    if-ne v6, v5, :cond_29

    .line 322
    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userId:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 323
    new-instance v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    invoke-direct {v6, v0, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 324
    iput v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 325
    iput v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    .line 326
    iget-object v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-nez v1, :cond_27

    if-eqz v7, :cond_26

    .line 327
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-gt v3, v8, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v9, 0x0

    goto :goto_1c

    :cond_27
    :goto_1b
    const/4 v9, 0x1

    :goto_1c
    iput-boolean v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    if-nez p1, :cond_28

    .line 329
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    .line 331
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2a
    const/4 v2, 0x0

    .line 335
    iput-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v1, 0x0

    .line 336
    :goto_1d
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 337
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 338
    iget v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2b

    .line 339
    iput-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1e

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 344
    :cond_2c
    :goto_1e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p2, :cond_2d

    if-eqz p1, :cond_2d

    .line 345
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2e

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v11, v3

    if-ne v2, v11, :cond_2e

    .line 346
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V

    goto :goto_1f

    :cond_2d
    const/4 v3, 0x1

    .line 348
    :cond_2e
    :goto_1f
    iput v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    .line 349
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v4, 0x0

    if-lez v1, :cond_2f

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Stories"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_2f
    const-string v1, ""

    :goto_20
    if-eqz p1, :cond_30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_30

    goto :goto_21

    :cond_30
    move v3, v4

    :goto_21
    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private vibrateNewStory()V
    .locals 3

    .line 386
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 390
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :catch_0
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public animateNewStory()V
    .locals 3

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 406
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    .line 407
    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 782
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 783
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    .line 437
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 438
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 439
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    .line 440
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    .line 441
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    .line 442
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 444
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/4 v1, 0x0

    .line 446
    :goto_0
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    const/4 v13, 0x0

    if-ge v1, v2, :cond_2

    .line 447
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 448
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    cmpg-float v3, v3, v13

    if-gtz v3, :cond_0

    .line 449
    iget v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpg-float v3, v3, v13

    if-gtz v3, :cond_0

    .line 450
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->destroy()V

    .line 451
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 455
    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    .line 456
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    if-lez v1, :cond_1

    .line 457
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    move/from16 v1, v16

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 463
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    :cond_3
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v1, v12, v1

    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v17

    .line 467
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    .line 468
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v18

    .line 471
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 472
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v5, v7, v4}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 473
    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v2, v2, v13

    const/high16 v19, 0x437f0000    # 255.0f

    const/high16 v20, 0x3fc00000    # 1.5f

    const v21, 0x40151eb8    # 2.33f

    const/high16 v22, 0x40000000    # 2.0f

    if-lez v2, :cond_16

    cmpg-float v2, v17, v12

    if-gez v2, :cond_16

    .line 475
    iput v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/4 v2, 0x0

    .line 476
    :goto_3
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 477
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 478
    iget v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 479
    iget v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v3, v13

    const/4 v2, 0x0

    .line 481
    :goto_4
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const v5, 0x402a3d71    # 2.66f

    if-ge v2, v4, :cond_5

    .line 482
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 484
    iget v7, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 485
    iget v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/16 v9, 0x1c

    .line 487
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    mul-float/2addr v9, v7

    .line 489
    iget v15, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float/2addr v15, v12

    add-float/2addr v15, v9

    add-float/2addr v15, v3

    const/16 v12, 0x12

    .line 490
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    add-float/2addr v3, v12

    add-float v12, v15, v9

    .line 492
    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 494
    iget-object v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    sub-float/2addr v15, v9

    sub-float v10, v1, v9

    add-float/2addr v9, v1

    invoke-virtual {v13, v15, v10, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget-object v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    iget-object v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-direct {v6, v9, v10, v12, v13}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 497
    iget-object v9, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    iget-object v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 498
    iget-object v9, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget-object v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 499
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    const v9, 0x3faa3d71    # 1.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v9, v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    iget v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v8, v10

    invoke-static {v5, v9, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 500
    iget-object v4, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    neg-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v2, v2, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 502
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const v1, -0x7f443b34

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v10, 0x5affffff

    invoke-static {v10, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    .line 504
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 505
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 507
    :goto_5
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 508
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 509
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 510
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    iget v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 511
    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 512
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 513
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 514
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float v7, v7, v22

    .line 516
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v9, v9, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float v9, v9, v22

    add-float/2addr v8, v9

    .line 517
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    iget-object v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float v12, v12, v22

    sub-float/2addr v9, v12

    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    .line 515
    invoke-static {v8, v9, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 511
    invoke-virtual {v14, v3, v4, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 522
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 525
    :goto_6
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_11

    .line 526
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    add-int/lit8 v1, v0, -0x2

    if-ltz v1, :cond_7

    .line 527
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_8

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_8

    :cond_8
    move-object v3, v2

    :goto_8
    invoke-direct {v6, v1, v3, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    .line 528
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_9

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_9

    :cond_9
    move-object v3, v2

    :goto_9
    add-int/lit8 v0, v0, 0x2

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_a

    :cond_a
    move-object v0, v2

    :goto_a
    invoke-direct {v6, v3, v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v0

    if-eqz v1, :cond_c

    .line 530
    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 531
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v22

    iget-object v5, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, v22

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_b

    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 532
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v22

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, v22

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    :cond_b
    move-object v9, v2

    goto :goto_b

    :cond_c
    move-object v9, v1

    :goto_b
    if-eqz v0, :cond_e

    .line 536
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 537
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v3, v22

    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v22

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 538
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v3, v22

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v22

    add-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_e

    :cond_d
    move-object v12, v2

    goto :goto_c

    :cond_e
    move-object v12, v0

    .line 543
    :goto_c
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_f

    .line 544
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v3, v3, v19

    sub-float v0, v1, v0

    mul-float/2addr v3, v0

    sub-float v0, v1, v17

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 545
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v5, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    .line 547
    :cond_f
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/4 v13, 0x0

    cmpl-float v1, v0, v13

    if-lez v1, :cond_10

    .line 548
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v2, v2

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v17

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_10
    move v0, v8

    goto/16 :goto_6

    :cond_11
    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v3, v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v12, v4, v17

    mul-float/2addr v3, v12

    float-to-int v12, v3

    const/16 v3, 0x1f

    move-object/from16 v7, p1

    move v5, v10

    move v10, v0

    move v0, v11

    move v11, v1

    move v15, v4

    move v4, v13

    move v13, v3

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 553
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_15

    .line 554
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 555
    iget-object v7, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_10

    .line 558
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    if-ltz v8, :cond_13

    .line 559
    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_e

    :cond_13
    move-object v8, v2

    :goto_e
    add-int/lit8 v9, v1, -0x2

    if-ltz v9, :cond_14

    iget-object v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_f

    :cond_14
    move-object v9, v2

    :goto_f
    invoke-direct {v6, v8, v9, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v8

    .line 560
    invoke-direct {v6, v14, v3, v8}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    .line 561
    iget-object v8, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 562
    iget-object v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v14}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 563
    invoke-virtual {v14, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 565
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    :cond_16
    move v0, v11

    move v15, v12

    move v4, v13

    const v5, 0x5affffff

    .line 567
    :goto_11
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    if-eqz v1, :cond_1d

    cmpl-float v1, v17, v4

    if-lez v1, :cond_1d

    .line 568
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 569
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    const v2, 0x4071999a    # 3.775f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 570
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 571
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    const v2, 0x405a3d71    # 3.41f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    const v1, 0x40875c29    # 4.23f

    .line 573
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v7, v3

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    div-double/2addr v1, v7

    const-wide v7, 0x4076800000000000L    # 360.0

    mul-double/2addr v1, v7

    double-to-float v1, v1

    sub-float v11, v0, v15

    invoke-static {v11, v15, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    mul-float v2, v2, v17

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 576
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v1, 0x42480000    # 50.0f

    .line 577
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v0, 0x43b40000    # 360.0f

    .line 579
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v10, v0, v1

    .line 580
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3a000000

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    invoke-static {v5, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, -0x3d4c0000    # -90.0f

    div-float v1, v7, v22

    sub-float/2addr v0, v1

    move v11, v0

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v8, :cond_1d

    int-to-float v0, v12

    sub-float v1, v18, v0

    .line 584
    invoke-static {v1, v15, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v13, v15, v1

    int-to-float v1, v8

    sub-float/2addr v1, v9

    sub-float/2addr v1, v0

    .line 585
    invoke-static {v1, v15, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v16, v15, v0

    cmpg-float v0, v16, v4

    if-gez v0, :cond_17

    move/from16 v24, v4

    goto/16 :goto_15

    :cond_17
    if-nez v12, :cond_18

    .line 590
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    sub-float/2addr v0, v15

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    add-float/2addr v0, v15

    goto :goto_13

    :cond_18
    move v0, v15

    :goto_13
    cmpl-float v22, v0, v15

    if-eqz v22, :cond_19

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 594
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v14, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_19
    cmpg-float v0, v13, v15

    if-gez v0, :cond_1a

    .line 598
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sub-float v1, v15, v13

    mul-float v1, v1, v19

    mul-float v1, v1, v17

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 599
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 600
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    neg-float v0, v10

    mul-float v3, v0, v16

    const/4 v5, 0x0

    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v2, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v23, v2

    move v2, v11

    move/from16 v24, v4

    move v4, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1a
    move/from16 v24, v4

    :goto_14
    cmpl-float v0, v13, v24

    if-lez v0, :cond_1b

    .line 604
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v13

    mul-float v1, v1, v17

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 605
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 606
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    neg-float v0, v10

    mul-float v3, v0, v16

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1b
    if-eqz v22, :cond_1c

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1c
    mul-float v0, v10, v16

    mul-float v16, v16, v7

    add-float v0, v0, v16

    sub-float/2addr v11, v0

    :goto_15
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v24

    goto/16 :goto_12

    :cond_1d
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 789
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 791
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    const/4 v0, 0x0

    .line 792
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 793
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 801
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 803
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    .line 804
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 805
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 895
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float/2addr v2, v3

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    .line 904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    return v1

    .line 906
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    if-eqz v0, :cond_4

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 908
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return v1

    .line 911
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-wide/16 v0, -0x1

    .line 912
    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 914
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionBarActionMode(F)V
    .locals 1

    .line 366
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    .line 762
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 763
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    .line 764
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    if-nez p4, :cond_2

    .line 766
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 768
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    if-eqz v0, :cond_3

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FF)V
    .locals 0

    .line 775
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    .line 776
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 0

    .line 360
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUserFull(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->userFull:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
