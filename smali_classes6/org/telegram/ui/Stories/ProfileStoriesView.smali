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

.field private expandY:F

.field private left:F

.field private mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

.field private newStoryBounce:Landroid/animation/ValueAnimator;

.field private newStoryBounceT:F

.field paint:Landroid/graphics/Paint;

.field private peerStories:Lorg/telegram/tgnet/TLRPC$PeerStories;

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

.field private final storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private final titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private unreadCount:I

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

.method public constructor <init>(Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    .line 136
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

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 81
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    .line 82
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    .line 393
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    .line 394
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    .line 396
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    .line 398
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

    .line 399
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xf0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 400
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v17, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x96

    move-object v0, v13

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 401
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    .line 403
    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 870
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v13

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 922
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move/from16 v0, p2

    .line 138
    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    move-wide/from16 v1, p3

    .line 139
    iput-wide v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    move-object/from16 v1, p5

    .line 140
    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    move-object/from16 v1, p6

    .line 141
    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 142
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 144
    new-instance v0, Lorg/telegram/ui/Stories/StoriesGradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesGradientTools;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    .line 145
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v0, 0x5affffff

    .line 148
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 150
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 154
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x12

    .line 156
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const v1, 0x3ecccccd    # 0.4f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v12

    .line 157
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 158
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 160
    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 161
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 163
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const v1, 0x40151eb8    # 2.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 166
    invoke-direct {v7, v0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

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

.method static synthetic access$300(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    .line 52
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)F
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    return-void
.end method

.method private animateBounce()V
    .locals 6

    .line 711
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 712
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 713
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 714
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v1, [F

    .line 716
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    .line 717
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 718
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 720
    new-instance v4, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    .line 725
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 726
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 727
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 728
    new-instance v1, Lorg/telegram/ui/Stories/ProfileStoriesView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
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

    .line 744
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3fd47ae1    # 1.66f

    .line 745
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    .line 746
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 747
    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 748
    iget-object v3, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    .line 750
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

    .line 754
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 755
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    add-float/2addr v7, p3

    neg-float v3, p3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v0, v7, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 757
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

    .line 760
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 761
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 762
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    neg-float v3, p3

    mul-float/2addr v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float/2addr v7, p3

    sub-float/2addr v6, v2

    neg-float p3, v6

    invoke-virtual {v0, p2, v7, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 765
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 767
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

    .line 789
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

    .line 791
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 792
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    .line 793
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

    .line 799
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 800
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

    .line 803
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 804
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

    .line 809
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 810
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

    .line 813
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v6, v0

    .line 814
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    :goto_3
    double-to-float v0, v6

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 818
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 819
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

    .line 821
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v0, v4

    add-float v2, v15, v0

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 822
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

    .line 824
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v7, v15, v4

    add-float v2, v0, v15

    sub-float v8, v4, v2

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 825
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

    .line 827
    :cond_7
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 828
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

    .line 835
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 836
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float v8, v2, v6

    .line 838
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float v9, v0, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 839
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

    .line 844
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 845
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v10, v6

    .line 846
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

    .line 849
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 850
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 851
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

.method private synthetic lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iput p1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 429
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 430
    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 431
    aput-boolean v1, p1, v0

    .line 432
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 434
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    .line 486
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

    .line 415
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 3

    .line 858
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 859
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 861
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 862
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 860
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float p2, v0, p1

    sub-float p3, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 865
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

    .line 779
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

    .line 780
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

    .line 182
    iget v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 188
    :cond_0
    iget-wide v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

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

    .line 189
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->peerStories:Lorg/telegram/tgnet/TLRPC$PeerStories;

    .line 190
    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$PeerStories;

    move-result-object v5

    .line 192
    iget-wide v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    if-eqz v4, :cond_3

    .line 201
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->max_read_id:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-eqz v5, :cond_4

    .line 204
    iget v9, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->max_read_id:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_4
    if-eqz v6, :cond_5

    .line 206
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    .line 210
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    const/4 v12, 0x3

    if-eqz v9, :cond_12

    move v13, v2

    move v14, v13

    .line 212
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_9

    .line 213
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 214
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v2, :cond_7

    goto :goto_4

    .line 217
    :cond_7
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v2, v8, :cond_8

    .line 218
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    :cond_8
    add-int/lit8 v14, v14, 0x1

    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 222
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_13

    .line 223
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 224
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v15, :cond_a

    goto/16 :goto_9

    .line 227
    :cond_a
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v15, :cond_f

    .line 228
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-eqz v5, :cond_c

    const/4 v7, 0x0

    .line 230
    :goto_6
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_c

    .line 231
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v3, v15, :cond_b

    .line 232
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-object v13, v3

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 237
    :cond_c
    :goto_7
    instance-of v3, v13, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v3, :cond_e

    if-eqz v4, :cond_11

    const/4 v3, 0x0

    .line 239
    :goto_8
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_11

    .line 240
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v7, v15, :cond_d

    .line 241
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_9

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_f

    goto :goto_9

    :cond_f
    if-nez v1, :cond_10

    .line 252
    iget v3, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v3, v8, :cond_11

    .line 253
    :cond_10
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v12, :cond_11

    goto :goto_a

    :cond_11
    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_5

    :cond_12
    const/4 v14, 0x0

    .line 260
    :cond_13
    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v12, :cond_1b

    const/4 v2, 0x0

    .line 261
    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 262
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 263
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v7, :cond_18

    .line 264
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-eqz v5, :cond_15

    const/4 v8, 0x0

    .line 266
    :goto_c
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_15

    .line 267
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v13, v7, :cond_14

    .line 268
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_d

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 273
    :cond_15
    :goto_d
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v8, :cond_17

    if-eqz v4, :cond_1a

    const/4 v3, 0x0

    .line 275
    :goto_e
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1a

    .line 276
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v7, :cond_16

    .line 277
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_f

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    if-eqz v8, :cond_18

    goto :goto_f

    .line 288
    :cond_18
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_19

    goto :goto_f

    .line 291
    :cond_19
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 292
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v12, :cond_1a

    goto :goto_10

    :cond_1a
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    :goto_10
    const/4 v2, 0x0

    .line 301
    :goto_11
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ge v2, v3, :cond_22

    .line 302
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v7, 0x0

    .line 306
    :goto_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 307
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 308
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v9, v12, :cond_1c

    goto :goto_13

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1d
    move v7, v5

    const/4 v8, 0x0

    :goto_13
    if-ne v7, v5, :cond_1e

    .line 317
    iput v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    goto :goto_16

    .line 319
    :cond_1e
    iput v7, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    if-nez v1, :cond_20

    if-eqz v6, :cond_1f

    if-eqz v8, :cond_1f

    .line 320
    iget v4, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$PeerStories;->max_read_id:I

    if-gt v4, v5, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    goto :goto_15

    :cond_20
    :goto_14
    const/4 v4, 0x1

    :goto_15
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    :goto_16
    if-nez p1, :cond_21

    .line 323
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_22
    const/4 v2, 0x0

    .line 328
    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 329
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v7, 0x0

    .line 332
    :goto_18
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_24

    .line 333
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 334
    iget v8, v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v9, :cond_23

    goto :goto_19

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_24
    move v7, v5

    :goto_19
    if-ne v7, v5, :cond_28

    .line 341
    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 342
    new-instance v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    invoke-direct {v7, v0, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 343
    iput v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 344
    iput v8, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    .line 345
    iget-object v8, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-nez v1, :cond_26

    if-eqz v6, :cond_25

    .line 346
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PeerStories;->max_read_id:I

    if-gt v3, v8, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v9, 0x0

    goto :goto_1b

    :cond_26
    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    iput-boolean v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    if-nez p1, :cond_27

    .line 348
    invoke-virtual {v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    .line 350
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    const/4 v2, 0x0

    .line 354
    iput-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v1, 0x0

    .line 355
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 357
    iget v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2a

    .line 358
    iput-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1d

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 363
    :cond_2b
    :goto_1d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p2, :cond_2c

    if-eqz p1, :cond_2c

    .line 364
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2d

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v11, v3

    if-ne v2, v11, :cond_2d

    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V

    goto :goto_1e

    :cond_2c
    const/4 v3, 0x1

    .line 367
    :cond_2d
    :goto_1e
    iput v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    .line 368
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v4, 0x0

    if-lez v1, :cond_2e

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Stories"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_2e
    const-string v1, ""

    :goto_1f
    if-eqz p1, :cond_2f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_2f

    goto :goto_20

    :cond_2f
    move v3, v4

    :goto_20
    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private vibrateNewStory()V
    .locals 3

    .line 407
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 411
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
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

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 427
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    .line 428
    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 451
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

    .line 893
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 894
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    .line 458
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    const/high16 v0, 0x40600000    # 3.5f

    .line 459
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    .line 460
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    mul-float/2addr v0, v1

    .line 461
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 462
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 463
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v0, v7

    sub-float/2addr v3, v0

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    .line 464
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr v4, v0

    .line 465
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    add-float/2addr v3, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 467
    iget v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/4 v9, 0x0

    move v0, v9

    .line 469
    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-ge v0, v1, :cond_2

    .line 470
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 471
    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_0

    .line 472
    iget v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_0

    .line 473
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->destroy()V

    .line 474
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 478
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    .line 479
    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    if-lez v0, :cond_1

    .line 480
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    move v0, v15

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v0, v15

    goto :goto_0

    :cond_2
    move v0, v9

    :goto_2
    if-eqz v0, :cond_3

    .line 486
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    :cond_3
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v0, v11, v0

    invoke-static {v0, v11, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 490
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v2

    .line 491
    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-nez v3, :cond_6

    :cond_5
    move v3, v15

    goto :goto_3

    :cond_6
    move v3, v9

    .line 493
    :goto_3
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    iget v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-virtual {v14, v4, v4, v5, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 498
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    iget v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v4, v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    .line 499
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/16 v13, 0x18

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v12, v7

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v12

    invoke-virtual {v4, v5, v7, v1, v11}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    cmpl-float v1, v3, v10

    const v7, 0x40151eb8    # 2.33f

    const/high16 v11, 0x437f0000    # 255.0f

    const v4, 0x4071999a    # 3.775f

    const/4 v5, 0x0

    if-lez v1, :cond_e

    .line 501
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v13, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 502
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    neg-float v13, v13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v1, v13, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 503
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v1, :cond_7

    .line 504
    new-instance v1, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 505
    invoke-virtual {v1, v5, v15, v9}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 508
    :cond_7
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    .line 511
    :cond_8
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    move v5, v9

    const/4 v4, 0x0

    .line 514
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 515
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v10, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :cond_a
    if-eqz v1, :cond_b

    .line 519
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    goto :goto_6

    :cond_b
    move v1, v4

    goto :goto_6

    :cond_c
    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 521
    :goto_6
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    .line 522
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v4, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    mul-float v5, v0, v11

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 523
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v4, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 524
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v5, v5, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 525
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v13, v5, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iget v7, v5, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v4, v10, v13, v7, v5}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 526
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v7, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-virtual {v4, v1, v15}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 527
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 528
    iput-boolean v15, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    .line 529
    iget-boolean v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    .line 530
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v4

    const v5, 0x3f7ae148    # 0.98f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_d

    move v4, v15

    goto :goto_7

    :cond_d
    move v4, v9

    :goto_7
    iput-boolean v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-eq v1, v4, :cond_f

    .line 532
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateBounce()V

    goto :goto_8

    .line 535
    :cond_e
    iput-boolean v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    :cond_f
    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v1

    const v7, 0x5affffff

    const/high16 v13, 0x3fc00000    # 1.5f

    if-gez v4, :cond_18

    .line 538
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v4, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v4

    sub-float v0, v1, v0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v3, v1, v3

    mul-float v16, v0, v3

    .line 539
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 540
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v20

    .line 542
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v12, v5

    iget v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v3, v5, v10, v4}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    if-eqz v2, :cond_10

    .line 544
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 545
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    const v1, 0x4071999a    # 3.775f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 546
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x2

    .line 547
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v1, v16, v11

    float-to-int v1, v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v14, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    .line 550
    :cond_10
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    cmpl-float v2, v16, v1

    if-lez v2, :cond_17

    .line 551
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 552
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    const v2, 0x4071999a    # 3.775f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 553
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 554
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

    .line 556
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    const-wide v21, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v21

    div-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float v3, v3, v16

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 559
    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v1, 0x42480000    # 50.0f

    .line 560
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v0, 0x43b40000    # 360.0f

    .line 562
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v4, v0, v2

    .line 563
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3a000000

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    invoke-static {v7, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v10, v1

    sub-float/2addr v0, v2

    move/from16 v18, v0

    move v2, v9

    :goto_9
    if-ge v2, v5, :cond_17

    int-to-float v0, v2

    sub-float v1, v20, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    .line 568
    invoke-static {v1, v9, v15}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v22, v9, v1

    int-to-float v1, v5

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    .line 569
    invoke-static {v1, v9, v15}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v23, v9, v0

    cmpg-float v0, v23, v15

    if-gez v0, :cond_11

    move/from16 v25, v2

    move/from16 v26, v3

    move v7, v4

    move v9, v5

    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_11
    if-nez v2, :cond_12

    .line 574
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    sub-float/2addr v0, v9

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    add-float v17, v0, v9

    move/from16 v0, v17

    goto :goto_a

    :cond_12
    move v0, v9

    :goto_a
    cmpl-float v15, v0, v9

    if-eqz v15, :cond_13

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 578
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v14, v0, v0, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_13
    cmpg-float v0, v22, v9

    if-gez v0, :cond_14

    .line 582
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sub-float v1, v9, v22

    mul-float/2addr v1, v11

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 583
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40151eb8    # 2.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 584
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    neg-float v0, v4

    mul-float v7, v0, v23

    const/4 v9, 0x0

    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v25, v2

    move/from16 v2, v18

    move/from16 v26, v3

    move v3, v7

    move v7, v4

    move v4, v9

    move v9, v5

    const/16 v19, 0x0

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_14
    move/from16 v25, v2

    move/from16 v26, v3

    move v7, v4

    move v9, v5

    const/16 v19, 0x0

    :goto_b
    const/4 v0, 0x0

    cmpl-float v1, v22, v0

    if-lez v1, :cond_15

    .line 588
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v22

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 589
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 590
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    neg-float v0, v7

    mul-float v3, v0, v23

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_15
    if-eqz v15, :cond_16

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    mul-float v4, v7, v23

    mul-float v23, v23, v10

    add-float v4, v4, v23

    sub-float v18, v18, v4

    :goto_c
    add-int/lit8 v2, v25, 0x1

    move v4, v7

    move v5, v9

    move/from16 v3, v26

    const v7, 0x5affffff

    const/4 v9, 0x0

    const/4 v15, 0x1

    goto/16 :goto_9

    :cond_17
    :goto_d
    const/16 v19, 0x0

    goto :goto_e

    :cond_18
    const/16 v19, 0x0

    move/from16 v16, v0

    .line 602
    :goto_e
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v0

    if-gez v2, :cond_2c

    .line 604
    iput v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/4 v0, 0x0

    .line 605
    :goto_f
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 606
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 607
    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 608
    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_19
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 610
    :goto_10
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x402a3d71    # 2.66f

    if-ge v1, v2, :cond_1a

    .line 611
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 613
    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 614
    iget v5, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/16 v7, 0x1c

    .line 616
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    mul-float/2addr v7, v4

    .line 618
    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float/2addr v9, v10

    add-float/2addr v9, v7

    add-float/2addr v9, v0

    const/16 v10, 0x12

    .line 619
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v0, v10

    add-float v10, v9, v7

    .line 621
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 623
    iget-object v15, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    sub-float/2addr v9, v7

    sub-float v11, v12, v7

    add-float/2addr v7, v12

    invoke-virtual {v15, v9, v11, v10, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 624
    iget-object v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    iget-object v11, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-direct {v6, v7, v9, v10, v11}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 626
    iget-object v7, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 627
    iget-object v7, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget-object v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 628
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const v7, 0x3faa3d71    # 1.33f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    const v9, 0x40151eb8    # 2.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v7, v10, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    iget v9, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v5, v9

    invoke-static {v3, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 629
    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    neg-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v1, v1, 0x1

    const/high16 v11, 0x437f0000    # 255.0f

    goto/16 :goto_10

    .line 631
    :cond_1a
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const v1, -0x7f443b34

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v4, 0x5affffff

    invoke-static {v4, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    .line 633
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40151eb8    # 2.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 634
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    const/4 v0, 0x0

    .line 636
    :goto_11
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 637
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 638
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 639
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    iget v7, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 640
    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 641
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 642
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    .line 643
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 645
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    iget-object v10, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v10, v10, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    const v10, 0x40151eb8    # 2.33f

    .line 646
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    iget-object v12, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v8

    sub-float/2addr v11, v12

    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    .line 644
    invoke-static {v9, v11, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v8, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 640
    invoke-virtual {v14, v4, v5, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 651
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    .line 654
    :goto_12
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_27

    .line 655
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    add-int/lit8 v0, v9, -0x2

    if-ltz v0, :cond_1c

    .line 656
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_13

    :cond_1c
    move-object/from16 v5, v19

    :goto_13
    add-int/lit8 v0, v9, -0x1

    if-ltz v0, :cond_1d

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_14

    :cond_1d
    move-object/from16 v0, v19

    :goto_14
    invoke-direct {v6, v5, v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v0

    add-int/lit8 v8, v9, 0x1

    .line 657
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1e

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_15

    :cond_1e
    move-object/from16 v5, v19

    :goto_15
    add-int/lit8 v9, v9, 0x2

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_1f

    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_16

    :cond_1f
    move-object/from16 v1, v19

    :goto_16
    invoke-direct {v6, v5, v1, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v1

    if-eqz v0, :cond_21

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 660
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

    if-ltz v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 661
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

    if-lez v2, :cond_21

    :cond_20
    move-object/from16 v9, v19

    goto :goto_17

    :cond_21
    move-object v9, v0

    :goto_17
    if-eqz v1, :cond_23

    .line 665
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 666
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

    if-ltz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 667
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

    if-lez v0, :cond_24

    goto :goto_18

    :cond_22
    const/high16 v10, 0x40000000    # 2.0f

    :goto_18
    move-object/from16 v11, v19

    goto :goto_19

    :cond_23
    const/high16 v10, 0x40000000    # 2.0f

    :cond_24
    move-object v11, v1

    .line 672
    :goto_19
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_25

    .line 673
    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    sub-float v0, v1, v0

    mul-float/2addr v3, v0

    sub-float v0, v1, v16

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 674
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesGradientTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v5, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    .line 676
    :cond_25
    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/4 v12, 0x0

    cmpl-float v1, v0, v12

    if-lez v1, :cond_26

    .line 677
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v2, v2

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v16

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 678
    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_26
    move v9, v8

    goto/16 :goto_12

    :cond_27
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/16 v13, 0x1f

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 682
    iget-object v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_2b

    .line 683
    iget-object v1, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 684
    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_1d

    .line 687
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_29

    .line 688
    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1b

    :cond_29
    move-object/from16 v5, v19

    :goto_1b
    add-int/lit8 v3, v0, -0x2

    if-ltz v3, :cond_2a

    iget-object v4, v6, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1c

    :cond_2a
    move-object/from16 v3, v19

    :goto_1c
    invoke-direct {v6, v5, v3, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v3

    .line 689
    invoke-direct {v6, v14, v1, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    .line 690
    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 691
    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 692
    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 694
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 697
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 900
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    const/4 v0, 0x0

    .line 903
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
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

    .line 912
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    .line 915
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
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

    .line 1006
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 1010
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

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    return v1

    .line 1017
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_5

    .line 1018
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

    .line 1019
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return v1

    .line 1022
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-wide/16 v0, -0x1

    .line 1023
    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1025
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionBarActionMode(F)V
    .locals 1

    .line 385
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    .line 873
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

    .line 874
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    .line 875
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    if-nez p4, :cond_2

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 879
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FF)V
    .locals 0

    .line 886
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    .line 887
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 0

    .line 379
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    .line 85
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStories(Lorg/telegram/tgnet/TLRPC$PeerStories;)V
    .locals 1

    .line 176
    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->peerStories:Lorg/telegram/tgnet/TLRPC$PeerStories;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 171
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
