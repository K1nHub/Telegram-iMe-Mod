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

.field private bounceScale:F

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

.field private final dialogId:J

.field private expandProgress:F

.field private expandRight:F

.field private expandRightPad:Z

.field private final expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private expandY:F

.field private fragmentTransitionProgress:F

.field private final gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

.field private lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

.field private left:F

.field private mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

.field private newStoryBounce:Landroid/animation/ValueAnimator;

.field private newStoryBounceT:F

.field private onLongPressRunnable:Ljava/lang/Runnable;

.field paint:Landroid/graphics/Paint;

.field private progressIsDone:Z

.field private progressToInsets:F

.field private final progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private progressWasDrawn:Z

.field private final provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private final readPaint:Landroid/graphics/Paint;

.field private readPaintAlpha:I

.field private final rect1:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private final rect3:Landroid/graphics/RectF;

.field private right:F

.field private final rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private final titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private unreadCount:I

.field private uploadingStoriesCount:I

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

.method public static synthetic $r8$lambda$WzFlAnXPCpgRbZeCXQCQ0txFlEU(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cv2GeewBpAkyfPKIlPgBhovSY0c(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ssY47MdiI98evy1xYuYQkxHc5Pg(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$new$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    .line 141
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 67
    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v10, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 69
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipOutAvatar:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 82
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    .line 83
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 87
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-direct {v0, v7, v13}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;-><init>(Landroid/view/View;Z)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    .line 406
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    .line 407
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    .line 408
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    .line 410
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    .line 412
    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v13, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 413
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xf0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 414
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x96

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 416
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 906
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v13

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 907
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 960
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    .line 1043
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    move/from16 v0, p2

    .line 143
    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    move-wide/from16 v1, p3

    .line 144
    iput-wide v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    move-object/from16 v1, p5

    .line 145
    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    move-object/from16 v1, p6

    .line 146
    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 147
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const v0, 0x5affffff

    .line 149
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 151
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x12

    .line 157
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const v1, 0x3ecccccd    # 0.4f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v12

    .line 158
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 159
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 161
    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 162
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const v1, 0x40151eb8    # 2.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 167
    invoke-direct {v7, v0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/ProfileStoriesView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)F
    .locals 0

    .line 53
    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method private animateBounce()V
    .locals 6

    .line 746
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 747
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 748
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 749
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v1, [F

    .line 751
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    .line 752
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 753
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    new-instance v4, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    .line 760
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 761
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 762
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 763
    new-instance v1, Lorg/telegram/ui/Stories/ProfileStoriesView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 771
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 779
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3fd47ae1    # 1.66f

    .line 780
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    .line 781
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 782
    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 783
    iget-object v3, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    .line 785
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

    .line 789
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 790
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 791
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    add-float/2addr v7, p3

    neg-float v3, p3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v0, v7, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 792
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

    .line 795
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 796
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    neg-float v3, p3

    mul-float/2addr v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float/2addr v7, p3

    sub-float/2addr v6, v2

    neg-float p3, v6

    invoke-virtual {v0, p2, v7, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 800
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
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

    .line 824
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

    .line 826
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 827
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    .line 828
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

    .line 834
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 835
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

    .line 838
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 839
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

    .line 844
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 845
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

    .line 848
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 849
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    :goto_3
    double-to-float v0, v6

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 853
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 854
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

    .line 856
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v0, v4

    add-float v2, v15, v0

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 857
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

    .line 859
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v15, v4

    add-float v2, v0, v15

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 860
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

    .line 862
    :cond_7
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 863
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

    .line 870
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 871
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float v8, v2, v6

    .line 873
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float v9, v0, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 874
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

    .line 879
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 880
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v10, v6

    .line 881
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

    .line 884
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 885
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 886
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

.method private getExpandRight()F
    .locals 3

    .line 1049
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/16 v2, 0x47

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iput p1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 442
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 443
    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 444
    aput-boolean v1, p1, v0

    .line 445
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 447
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    .line 500
    iget p1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 1043
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPress()V

    return-void
.end method

.method private synthetic lambda$vibrateNewStory$0()V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 428
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 3

    .line 893
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 894
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 896
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 897
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 895
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float p2, v0, p1

    sub-float p3, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 900
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

    .line 814
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

    .line 815
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

    move/from16 v1, p1

    .line 183
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 189
    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 190
    :goto_0
    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v5

    .line 191
    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v6

    .line 193
    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    if-eqz v5, :cond_3

    .line 200
    iget v11, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2

    :cond_3
    move v11, v3

    :goto_2
    if-eqz v6, :cond_4

    .line 203
    iget v12, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_4
    if-eqz v7, :cond_5

    .line 205
    iget-object v12, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-nez v12, :cond_6

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 206
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    .line 209
    iput v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    if-eqz v12, :cond_14

    move v9, v3

    move v10, v9

    .line 211
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_9

    .line 212
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 213
    instance-of v8, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v8, :cond_7

    goto :goto_4

    .line 216
    :cond_7
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v3, v11, :cond_8

    .line 217
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    :cond_8
    add-int/lit8 v10, v10, 0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 221
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_13

    .line 222
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 223
    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v9, :cond_b

    :cond_a
    :goto_6
    const/4 v8, 0x3

    goto/16 :goto_a

    .line 226
    :cond_b
    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v9, :cond_10

    .line 227
    iget v9, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eqz v6, :cond_d

    const/4 v4, 0x0

    .line 229
    :goto_7
    iget-object v15, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_d

    .line 230
    iget-object v15, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v15, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v15, v9, :cond_c

    .line 231
    iget-object v8, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object v8, v4

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 236
    :cond_d
    :goto_8
    instance-of v4, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v4, :cond_f

    if-eqz v5, :cond_a

    const/4 v4, 0x0

    .line 238
    :goto_9
    iget-object v8, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_a

    .line 239
    iget-object v8, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v8, v9, :cond_e

    .line 240
    iget-object v8, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_6

    :cond_10
    if-nez v2, :cond_11

    .line 251
    iget v4, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v4, v11, :cond_a

    .line 252
    :cond_11
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x3

    if-lt v4, v8, :cond_12

    goto :goto_b

    :cond_12
    :goto_a
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_13
    const/4 v8, 0x3

    goto :goto_b

    :cond_14
    const/4 v8, 0x3

    const/4 v10, 0x0

    .line 259
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v8, :cond_1d

    const/4 v3, 0x0

    .line 260
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 261
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 262
    instance-of v8, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v8, :cond_19

    .line 263
    iget v8, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eqz v6, :cond_16

    const/4 v9, 0x0

    .line 265
    :goto_d
    iget-object v11, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_16

    .line 266
    iget-object v11, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v11, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v11, v8, :cond_15

    .line 267
    iget-object v4, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_e

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 272
    :cond_16
    :goto_e
    instance-of v9, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v9, :cond_18

    if-eqz v5, :cond_1b

    const/4 v4, 0x0

    .line 274
    :goto_f
    iget-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1b

    .line 275
    iget-object v9, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v9, v8, :cond_17

    .line 276
    iget-object v8, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_10

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_18
    if-eqz v9, :cond_19

    goto :goto_10

    .line 287
    :cond_19
    instance-of v8, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v8, :cond_1a

    goto :goto_10

    .line 290
    :cond_1a
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 291
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x3

    if-lt v4, v8, :cond_1c

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v8, 0x3

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    :goto_11
    const/4 v3, 0x0

    .line 300
    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v3, v4, :cond_24

    .line 301
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v8, 0x0

    .line 305
    :goto_13
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1f

    .line 306
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 307
    iget v11, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v12, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v11, v12, :cond_1e

    goto :goto_14

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1f
    move v8, v6

    const/4 v9, 0x0

    :goto_14
    if-ne v8, v6, :cond_20

    .line 316
    iput v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    goto :goto_17

    .line 318
    :cond_20
    iput v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    if-nez v2, :cond_22

    if-eqz v7, :cond_21

    if-eqz v9, :cond_21

    .line 319
    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->getMaxStoriesReadId(J)I

    move-result v6

    if-gt v5, v6, :cond_21

    goto :goto_15

    :cond_21
    const/4 v5, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    const/4 v5, 0x1

    :goto_16
    iput-boolean v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    :goto_17
    if-nez v1, :cond_23

    .line 322
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    const/4 v3, 0x0

    .line 327
    :goto_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 328
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v8, 0x0

    .line 331
    :goto_19
    iget-object v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_26

    .line 332
    iget-object v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 333
    iget v9, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    iget v11, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v9, v11, :cond_25

    goto :goto_1a

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_26
    move v8, v6

    :goto_1a
    if-ne v8, v6, :cond_2a

    .line 340
    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iput-wide v8, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 341
    new-instance v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 342
    iput v3, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 343
    iput v9, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    .line 344
    iget-object v9, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v11, 0x1

    invoke-virtual {v9, v5, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-nez v2, :cond_28

    if-eqz v7, :cond_27

    .line 345
    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v9, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-gt v4, v9, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v11, 0x0

    goto :goto_1c

    :cond_28
    :goto_1b
    const/4 v11, 0x1

    :goto_1c
    iput-boolean v11, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    if-nez v1, :cond_29

    .line 347
    invoke-virtual {v8}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    .line 349
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2b
    const/4 v3, 0x0

    .line 353
    iput-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v2, 0x0

    .line 354
    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 355
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 356
    iget v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2c

    .line 357
    iput-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1e

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 361
    :cond_2d
    :goto_1e
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_1f

    .line 362
    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1f
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    .line 364
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-nez v11, :cond_2f

    .line 365
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-eqz v2, :cond_2f

    const/4 v11, 0x1

    :cond_2f
    if-eqz p2, :cond_30

    if-eqz v1, :cond_30

    .line 368
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v11, v2, :cond_31

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v14, v3

    if-ne v2, v14, :cond_31

    .line 369
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V

    goto :goto_20

    :cond_30
    const/4 v3, 0x1

    .line 371
    :cond_31
    :goto_20
    iput v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    .line 372
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v4, 0x0

    if-lez v11, :cond_32

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Stories"

    invoke-static {v6, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    :cond_32
    const-string v5, ""

    :goto_21
    if-eqz v1, :cond_33

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_33

    goto :goto_22

    :cond_33
    move v3, v4

    :goto_22
    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 374
    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_34

    .line 375
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 376
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_23

    .line 378
    :cond_34
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 382
    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private vibrateNewStory()V
    .locals 3

    .line 420
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 424
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :catch_0
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public animateNewStory()V
    .locals 3

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 440
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    .line 441
    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 464
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

    .line 931
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 932
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    .line 471
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 472
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v0, v7

    const v1, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v1

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 473
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 474
    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    mul-float/2addr v1, v2

    .line 475
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 476
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 477
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float/2addr v4, v1

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    .line 478
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v5, v1

    .line 479
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    add-float/2addr v4, v2

    add-float/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    iget v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/4 v11, 0x0

    move v1, v11

    .line 483
    :goto_0
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    if-ge v1, v2, :cond_2

    .line 484
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 485
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_0

    .line 486
    iget v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_0

    .line 487
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->destroy()V

    .line 488
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 492
    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    .line 493
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    if-lez v1, :cond_1

    .line 494
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    move v1, v15

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v1, v15

    goto :goto_0

    :cond_2
    move v1, v11

    :goto_2
    if-eqz v1, :cond_3

    .line 500
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 503
    :cond_3
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    sub-float v1, v7, v1

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 504
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v3

    .line 505
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v4, v12, v13}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 506
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v5, :cond_4

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v5, :cond_4

    .line 507
    iput-boolean v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    .line 508
    iput-boolean v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    .line 509
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v11, v15}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_6

    .line 511
    :cond_5
    iget-boolean v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-nez v4, :cond_7

    :cond_6
    move v4, v15

    goto :goto_3

    :cond_7
    move v4, v11

    .line 512
    :goto_3
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    .line 513
    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    invoke-static {v8, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 516
    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iget-object v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v14, v5, v5, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 518
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    iget v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    const/4 v13, 0x0

    .line 521
    iput-object v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    cmpl-float v5, v4, v8

    const v16, 0x40151eb8    # 2.33f

    const/high16 v17, 0x437f0000    # 255.0f

    const v18, 0x4071999a    # 3.775f

    if-lez v5, :cond_11

    .line 523
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 524
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    neg-float v9, v9

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v5, v9, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 525
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v2

    .line 526
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v5, :cond_8

    .line 527
    new-instance v5, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 528
    invoke-virtual {v5, v13, v15, v11}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 531
    :cond_8
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    .line 534
    :cond_9
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 536
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 537
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    :cond_a
    move v13, v8

    move v9, v11

    .line 539
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_b

    .line 540
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v14, v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v13, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 542
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v13, v5

    goto :goto_6

    :cond_c
    move v13, v8

    goto :goto_6

    :cond_d
    :goto_5
    move v13, v7

    .line 547
    :goto_6
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    mul-float v5, v1, v17

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 548
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 551
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v14, v9, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v11, v9, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v15, v9, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v5, v14, v11, v15, v9}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 552
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-static {v13, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    const/4 v11, 0x1

    invoke-virtual {v5, v9, v11}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 553
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    iget-boolean v5, v5, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    if-eqz v5, :cond_e

    .line 554
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    move-object/from16 v14, p1

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_e
    move-object/from16 v14, p1

    .line 556
    :goto_7
    iput-boolean v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    .line 557
    iget-boolean v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    .line 558
    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v9

    const v11, 0x3f7ae148    # 0.98f

    cmpl-float v9, v9, v11

    if-ltz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_8

    :cond_f
    const/4 v9, 0x0

    :goto_8
    iput-boolean v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-eq v5, v9, :cond_10

    .line 560
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v9, v9

    const/4 v11, 0x1

    invoke-virtual {v5, v9, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 561
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v9, v9

    invoke-virtual {v5, v9, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 562
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateBounce()V

    :cond_10
    const/4 v9, 0x0

    goto :goto_9

    :cond_11
    move v9, v11

    .line 565
    iput-boolean v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    const/4 v2, 0x0

    :goto_9
    cmpg-float v5, v4, v7

    const v11, 0x5affffff

    if-gez v5, :cond_1e

    .line 568
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v5, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v5

    sub-float v1, v7, v1

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v4, v7, v4

    mul-float v15, v1, v4

    .line 569
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 570
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v19

    const/4 v4, 0x2

    if-eqz v3, :cond_13

    .line 573
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 574
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 575
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v0

    .line 576
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v1, v15, v17

    float-to-int v1, v1

    .line 577
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 578
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v14, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_12
    move/from16 v18, v10

    move-object v13, v14

    goto/16 :goto_11

    .line 579
    :cond_13
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    if-nez v3, :cond_14

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-lez v3, :cond_12

    :cond_14
    cmpl-float v3, v15, v8

    if-lez v3, :cond_12

    .line 580
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 581
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v3, v5, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 582
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 583
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    const v5, 0x405a3d71    # 3.41f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    neg-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v3, v9, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 584
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-static {v3, v5, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const v3, 0x40875c29    # 4.23f

    .line 586
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v13, v3

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move/from16 v18, v10

    float-to-double v9, v3

    const-wide v21, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v21

    div-double/2addr v13, v9

    const-wide v9, 0x4076800000000000L    # 360.0

    mul-double/2addr v13, v9

    double-to-float v3, v13

    sub-float v5, v1, v7

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    mul-float/2addr v5, v15

    invoke-static {v8, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 589
    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v9, 0x32

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/high16 v5, 0x42480000    # 50.0f

    .line 590
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/16 v1, 0x14

    if-le v10, v1, :cond_15

    const/4 v1, 0x3

    goto :goto_a

    :cond_15
    const/4 v1, 0x5

    :goto_a
    const/4 v5, 0x1

    if-gt v10, v5, :cond_16

    const/4 v1, 0x0

    :cond_16
    mul-int/2addr v1, v4

    int-to-float v1, v1

    .line 598
    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    const/high16 v0, 0x43b40000    # 360.0f

    .line 600
    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v14

    sub-float/2addr v0, v1

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v9, v0, v1

    .line 601
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3a000000

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    invoke-static {v11, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v14, v1

    sub-float/2addr v0, v3

    move/from16 v21, v0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v10, :cond_1d

    int-to-float v0, v5

    sub-float v1, v19, v0

    .line 606
    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v22, v7, v1

    int-to-float v1, v10

    sub-float/2addr v1, v13

    sub-float/2addr v1, v0

    .line 607
    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v23, v7, v0

    cmpg-float v0, v23, v8

    if-gez v0, :cond_17

    move/from16 v26, v5

    move/from16 v22, v9

    move/from16 v25, v13

    move-object/from16 v13, p1

    goto/16 :goto_10

    :cond_17
    if-nez v5, :cond_18

    .line 612
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    sub-float/2addr v0, v7

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    add-float/2addr v0, v7

    goto :goto_c

    :cond_18
    move v0, v7

    :goto_c
    cmpl-float v24, v0, v7

    if-eqz v24, :cond_19

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 616
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_d

    :cond_19
    move-object/from16 v4, p1

    :goto_d
    cmpg-float v0, v22, v7

    if-gez v0, :cond_1a

    .line 620
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v3

    sub-float v0, v7, v22

    mul-float v0, v0, v17

    mul-float/2addr v0, v15

    float-to-int v0, v0

    .line 621
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 622
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 623
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    neg-float v0, v9

    mul-float v25, v0, v23

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v2, v21

    move-object/from16 v27, v3

    move/from16 v3, v25

    move/from16 v25, v13

    move-object v13, v4

    move/from16 v4, v26

    move/from16 v26, v5

    move-object/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_1a
    move/from16 v26, v5

    move/from16 v25, v13

    move-object v13, v4

    move-object/from16 v27, v2

    :goto_e
    cmpl-float v0, v22, v8

    if-lez v0, :cond_1b

    .line 627
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v22

    mul-float/2addr v1, v15

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 628
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    move v5, v9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 629
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    neg-float v0, v5

    mul-float v3, v0, v23

    const/4 v4, 0x0

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v20, v2

    move/from16 v2, v21

    move/from16 v22, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_1b
    move/from16 v22, v9

    :goto_f
    if-eqz v24, :cond_1c

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1c
    mul-float v0, v22, v23

    mul-float v23, v23, v14

    add-float v0, v0, v23

    sub-float v21, v21, v0

    move-object/from16 v2, v27

    :goto_10
    add-int/lit8 v5, v26, 0x1

    move/from16 v9, v22

    move/from16 v13, v25

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v13, p1

    goto :goto_11

    :cond_1e
    move/from16 v18, v10

    move-object v13, v14

    move v15, v1

    .line 641
    :goto_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v0

    .line 642
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_32

    cmpg-float v1, v15, v7

    if-gez v1, :cond_32

    .line 644
    iput v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/4 v1, 0x0

    .line 645
    :goto_12
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 646
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 647
    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 648
    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/16 v4, 0xe

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    move v2, v8

    move/from16 v10, v18

    const/4 v1, 0x0

    .line 650
    :goto_13
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 651
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 653
    iget v5, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 654
    iget v14, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/16 v18, 0x1c

    .line 656
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v18, 0x40000000    # 2.0f

    div-float v9, v9, v18

    mul-float/2addr v9, v5

    .line 658
    iget v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float v7, v0, v7

    add-float/2addr v7, v9

    add-float/2addr v7, v2

    const/16 v19, 0x12

    .line 659
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v2, v8

    add-float v8, v7, v9

    .line 661
    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 663
    iget-object v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    sub-float/2addr v7, v9

    sub-float v4, v12, v9

    add-float/2addr v9, v12

    invoke-virtual {v11, v7, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 664
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-direct {v6, v4, v7, v8, v9}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 666
    iget-object v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 667
    iget-object v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v4, 0x402a3d71    # 2.66f

    .line 668
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const v7, 0x3faa3d71    # 1.33f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    iget v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v14, v8

    invoke-static {v4, v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 669
    iget-object v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    neg-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v1, v1, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const v11, 0x5affffff

    goto/16 :goto_13

    .line 671
    :cond_20
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const v1, -0x7f443b34

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v3, 0x5affffff

    invoke-static {v3, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    .line 673
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v14

    .line 674
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 675
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f900000    # 1.125f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 676
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    const/4 v0, 0x0

    .line 677
    :goto_14
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 678
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 679
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 680
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 682
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 683
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 684
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    const v8, 0x402a3d71    # 2.66f

    .line 686
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-virtual {v14}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    div-float/2addr v10, v7

    add-float/2addr v9, v10

    .line 687
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget-object v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    div-float/2addr v11, v7

    sub-float/2addr v10, v11

    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    .line 685
    invoke-static {v9, v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v1, v7

    add-float/2addr v5, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 681
    invoke-virtual {v13, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 692
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_21
    const/4 v11, 0x0

    .line 695
    :goto_15
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2d

    .line 696
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    add-int/lit8 v0, v11, -0x2

    if-ltz v0, :cond_22

    .line 697
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    :goto_16
    add-int/lit8 v1, v11, -0x1

    if-ltz v1, :cond_23

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_17

    :cond_23
    const/4 v1, 0x0

    :goto_17
    invoke-direct {v6, v0, v1, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v0

    add-int/lit8 v8, v11, 0x1

    .line 698
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_24

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_18

    :cond_24
    const/4 v1, 0x0

    :goto_18
    add-int/lit8 v11, v11, 0x2

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_25

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_19

    :cond_25
    const/4 v2, 0x0

    :goto_19
    invoke-direct {v6, v1, v2, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v1

    if-eqz v0, :cond_27

    .line 700
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 701
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 702
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    :cond_26
    const/4 v9, 0x0

    goto :goto_1a

    :cond_27
    move-object v9, v0

    :goto_1a
    if-eqz v1, :cond_29

    .line 706
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 707
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_28

    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 708
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2a

    goto :goto_1b

    :cond_28
    const/high16 v10, 0x40000000    # 2.0f

    :goto_1b
    const/4 v11, 0x0

    goto :goto_1c

    :cond_29
    const/high16 v10, 0x40000000    # 2.0f

    :cond_2a
    move-object v11, v1

    .line 713
    :goto_1c
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2b

    .line 714
    iget v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v2, v2, v17

    sub-float v0, v1, v0

    mul-float/2addr v2, v0

    sub-float v0, v1, v15

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    move-object v5, v14

    .line 715
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    .line 717
    :cond_2b
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/4 v12, 0x0

    cmpl-float v1, v0, v12

    if-lez v1, :cond_2c

    .line 718
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v2, v2

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v15

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 719
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_2c
    move v11, v8

    goto/16 :goto_15

    :cond_2d
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v0, v0, v17

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v15

    mul-float/2addr v0, v7

    float-to-int v12, v0

    const/16 v0, 0x1f

    move-object/from16 v7, p1

    move-object v3, v13

    const/4 v1, 0x0

    move v13, v0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 723
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1d
    if-ltz v0, :cond_31

    .line 724
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 725
    iget-object v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_20

    .line 728
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_2f

    .line 729
    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1e

    :cond_2f
    move-object v13, v1

    :goto_1e
    add-int/lit8 v5, v0, -0x2

    if-ltz v5, :cond_30

    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1f

    :cond_30
    move-object v5, v1

    :goto_1f
    invoke-direct {v6, v13, v5, v2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v5

    .line 730
    invoke-direct {v6, v3, v2, v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    .line 731
    iget-object v5, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 732
    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 733
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 735
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object v2, v14

    goto :goto_21

    :cond_32
    move-object v3, v13

    :goto_21
    if-eqz v2, :cond_33

    const v0, 0x40133333    # 2.3f

    .line 739
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 742
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getFragmentTransitionProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1091
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 938
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 940
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    const/4 v0, 0x0

    .line 941
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
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

    .line 950
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 952
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    .line 953
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 954
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLongPress()V
    .locals 0

    return-void
.end method

.method protected onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1055
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v2

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

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v2

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

    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1065
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 1067
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1068
    iget-object v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_5

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

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

    if-gtz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1070
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return v1

    .line 1073
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-wide/16 v0, -0x1

    .line 1074
    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1077
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionBarActionMode(F)V
    .locals 1

    .line 399
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 402
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    .line 910
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

    .line 911
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    .line 912
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    if-nez p4, :cond_2

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 916
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FZF)V
    .locals 0

    .line 923
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    .line 924
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    .line 925
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    .line 926
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 1

    .line 391
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 392
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFragmentTransitionProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1082
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1085
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    .line 90
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 172
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
