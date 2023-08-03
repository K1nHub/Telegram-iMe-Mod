.class public Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;
.super Landroid/widget/FrameLayout;
.source "DialogStoriesCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryCell"
.end annotation


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private bounceScale:F

.field chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field crossfadeToDialog:Z

.field crossfadeToDialogId:J

.field public crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private cx:F

.field private cy:F

.field dialogId:J

.field public drawAvatar:Z

.field public drawInParent:Z

.field public isFirst:Z

.field public isLast:Z

.field isSelf:Z

.field private isUploadingState:Z

.field private mini:Z

.field private overscrollProgress:F

.field public final params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public position:I

.field progressToCollapsed:F

.field progressToCollapsed2:F

.field public radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private selectedForOverscroll:Z

.field textAlpha:F

.field textAlphaTransition:F

.field textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field textViewContainer:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

.field user:Lorg/telegram/tgnet/TLRPC$User;

.field private verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$-TcnCS1ng7ETEYWUQXInCeY8YTc(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$animateBounce$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NRuaGWGhroG6Ni8ZbQePBBC7tDo(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$dispatchDraw$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmHUNaVEFMebdYvpgKznbfROTBQ(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$setDialogId$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V
    .locals 2

    .line 1013
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1014
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 986
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 987
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 988
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 989
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 p2, 0x1

    .line 990
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    .line 1002
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1003
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    .line 1004
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    .line 1008
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    .line 1015
    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$600(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1019
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    .line 1020
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1021
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez p1, :cond_1

    .line 1022
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1024
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->createTextView()V

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0x30

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1027
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;F)F
    .locals 0

    .line 978
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setClipInParent(Z)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)Z
    .locals 0

    .line 978
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    return p1
.end method

.method private animateBounce()V
    .locals 6

    .line 1325
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 1326
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 1327
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1328
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v1, [F

    .line 1330
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    .line 1331
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1332
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1334
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    const/4 v5, 0x0

    .line 1338
    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setClipInParent(Z)V

    .line 1339
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1340
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 1341
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1342
    new-instance v1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$4;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1350
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$900(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$900(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$900(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$902(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void

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

.method private createTextView()V
    .locals 9

    .line 1031
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    .line 1032
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$700(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method private getArcProgress(FF)F
    .locals 3

    .line 1369
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$200(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1373
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40600000    # 3.5f

    .line 1374
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    div-float/2addr p1, v1

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 1377
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$animateBounce$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    .line 1336
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$300(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 1259
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setDialogId$0()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$902(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method private setClipInParent(Z)V
    .locals 1

    .line 1360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/16 v1, 0x30

    .line 1164
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x1c

    .line 1165
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x8

    .line 1166
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$200(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    div-float/2addr v4, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    mul-float/2addr v3, v4

    .line 1167
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    const/16 v10, 0x10

    if-eqz v4, :cond_0

    .line 1168
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$200(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v6

    sub-float/2addr v6, v5

    div-float/2addr v6, v5

    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    :cond_0
    add-float/2addr v1, v3

    .line 1171
    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v11, v1

    .line 1174
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float v12, v4, v3

    .line 1175
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v12, v9, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v13

    const/4 v4, 0x5

    .line 1176
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float/2addr v6, v1

    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v4, v6, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    .line 1178
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    div-float/2addr v1, v5

    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v15

    .line 1180
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 1181
    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceAnimateProgressToSegments:Z

    if-nez v4, :cond_1

    .line 1182
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$300(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v4

    sub-float v4, v8, v4

    iput v4, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 1184
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    add-float v4, v13, v11

    add-float v6, v14, v11

    invoke-virtual {v1, v13, v14, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1185
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1186
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    float-to-int v4, v3

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    add-float v1, v13, v3

    .line 1188
    iput v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    add-float v1, v14, v3

    .line 1189
    iput v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    .line 1190
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$600(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1191
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1195
    :goto_0
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    cmpl-float v1, v1, v9

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    .line 1196
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v4, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1198
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_11

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1200
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-virtual {v7, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1201
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v1, :cond_4

    .line 1202
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 1204
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v1

    const v4, 0x3f7ae148    # 0.98f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    goto/16 :goto_3

    .line 1251
    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v1, :cond_7

    .line 1252
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    if-eqz v1, :cond_6

    .line 1253
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->animateBounce()V

    .line 1254
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceAnimateProgressToSegments:Z

    .line 1255
    iput v9, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    new-array v1, v10, [F

    .line 1256
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1257
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1261
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$3;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v16, v6

    const-wide/16 v5, 0x64

    .line 1268
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1269
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_6
    move/from16 v16, v6

    .line 1272
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    xor-int/2addr v2, v4

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 1273
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->getArcProgress(FF)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    .line 1274
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    .line 1275
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFirst:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    .line 1276
    iget-wide v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-object/from16 v3, p1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_2

    :cond_7
    move/from16 v16, v6

    const/4 v10, 0x0

    .line 1279
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iput-boolean v10, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    .line 1280
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v1, :cond_10

    .line 1281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v1, v8, v15

    .line 1283
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v7, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1284
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-virtual {v0, v7, v1, v2, v8}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawPlus(Landroid/graphics/Canvas;FFF)V

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    :cond_8
    :goto_3
    move/from16 v16, v6

    const/4 v10, 0x0

    .line 1207
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1209
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1200(Lorg/telegram/ui/Stories/DialogStoriesCell;)Z

    move-result v1

    move v3, v8

    goto :goto_5

    :cond_9
    move v1, v9

    move v5, v10

    .line 1211
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_a

    .line 1212
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v3, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1214
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1215
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v4, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v5, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1202(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)Z

    move v3, v1

    move v1, v4

    .line 1217
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1218
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v4, :cond_c

    .line 1219
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v5, :cond_b

    .line 1220
    iput-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    goto :goto_6

    .line 1222
    :cond_b
    new-instance v5, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v5, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v4, 0x0

    .line 1223
    invoke-virtual {v5, v4, v2, v10}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 1226
    :cond_c
    :goto_6
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v4, :cond_d

    .line 1227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1228
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v15, v15, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v7, v4, v5, v6, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1229
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1230
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1233
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    if-eqz v1, :cond_e

    .line 1235
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_7

    .line 1236
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getActiveCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v1

    :goto_7
    const/16 v4, 0xff

    .line 1237
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1238
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 1239
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1240
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    float-to-int v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1241
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v10, v15

    float-to-int v10, v10

    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v15, v5

    float-to-int v5, v15

    .line 1239
    invoke-virtual {v1, v4, v6, v10, v5}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 1243
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 1244
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1245
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 1247
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->progressWasDrawn:Z

    .line 1248
    iput-boolean v2, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->drawCircleForce:Z

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1288
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    :cond_11
    move/from16 v16, v6

    .line 1290
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v1, :cond_12

    .line 1291
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 1292
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->getArcProgress(FF)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    .line 1293
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    .line 1294
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFirst:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    .line 1295
    iget-wide v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 1300
    :cond_12
    :goto_9
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialog:Z

    if-eqz v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_13

    .line 1301
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v13, v14, v11, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1302
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1303
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1305
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    sub-float v3, v8, v3

    mul-float/2addr v2, v3

    add-float v6, v16, v2

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1306
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    sub-float/2addr v13, v12

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1307
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v1, :cond_17

    .line 1309
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v1, :cond_14

    .line 1310
    iput v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    goto :goto_b

    .line 1312
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_15

    .line 1313
    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    goto :goto_a

    .line 1315
    :cond_15
    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 1317
    :goto_a
    iget v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    const v8, 0x3f333333    # 0.7f

    :cond_16
    iput v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    .line 1319
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1321
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawPlus(Landroid/graphics/Canvas;FFF)V
    .locals 4

    .line 1418
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x10

    .line 1421
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 1422
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$700(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$600(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1427
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/16 v0, 0xb

    .line 1429
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v0, 0x9

    .line 1430
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$600(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1500(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1434
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v3, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1502(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1436
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1437
    iget-object p4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1438
    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1439
    invoke-static {v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float v2, p3, v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1440
    invoke-static {v3}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1441
    invoke-static {v3}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr p3, v3

    float-to-int p3, p3

    .line 1437
    invoke-virtual {p4, v0, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1443
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_2
    return-void
.end method

.method getCy()F
    .locals 5

    const/16 v0, 0x30

    .line 1152
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x1c

    .line 1153
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 1155
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v3, 0x5

    .line 1158
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1100(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v1

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public invalidate()V
    .locals 3

    .line 1396
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1397
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v2, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v0, v2, :cond_1

    .line 1398
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 1400
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1403
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 2

    .line 1408
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1409
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v0, v1, :cond_1

    .line 1410
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1412
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1414
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1448
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1455
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1148
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x4a

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentCellWidth:I

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x51

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCrossfadeTo(J)V
    .locals 2

    .line 1477
    iget-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1478
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialog:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1483
    iput-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    .line 1485
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1486
    iput-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    :goto_1
    if-eqz p1, :cond_3

    .line 1489
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 1490
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1493
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfageToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDialogId(J)V
    .locals 8

    .line 1046
    iget-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1047
    :goto_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    .line 1048
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 1051
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1052
    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_2

    .line 1054
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1055
    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    :goto_2
    const-string v5, ""

    if-nez v3, :cond_3

    .line 1059
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1060
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void

    .line 1063
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 1064
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-eqz v3, :cond_4

    return-void

    .line 1068
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long p1, p1, v6

    if-nez p1, :cond_9

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V

    .line 1072
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    goto/16 :goto_4

    .line 1073
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getEditingStory()Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V

    .line 1075
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    goto/16 :goto_4

    :cond_6
    if-eqz v0, :cond_8

    .line 1077
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez p1, :cond_8

    .line 1078
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1079
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->createTextView()V

    .line 1080
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1081
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1082
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2, v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$802(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1084
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$802(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1085
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1096
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1105
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1106
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1107
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$902(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1114
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$900(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1115
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->MyStory:I

    const-string v0, "MyStory"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_4

    .line 1118
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_e

    .line 1119
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_3
    const-string p1, " "

    .line 1120
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_b

    .line 1122
    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1124
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz p1, :cond_d

    .line 1125
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_c

    .line 1126
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->access$1000(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1129
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v5, p1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1130
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1131
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1134
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v5, p1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1135
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1136
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1139
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1140
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1141
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setPressed(Z)V
    .locals 3

    .line 1385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    if-eqz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v1, :cond_0

    .line 1387
    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;F)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1389
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v0, :cond_1

    .line 1390
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public setProgressToCollapsed(FFFZ)V
    .locals 3

    .line 1462
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->overscrollProgress:F

    cmpl-float p3, v0, p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    if-eq p3, p4, :cond_1

    .line 1463
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    .line 1464
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    .line 1465
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    const/high16 p2, 0x3f000000    # 0.5f

    div-float/2addr p1, p2

    .line 1466
    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    const/16 p1, 0x30

    .line 1467
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/16 p1, 0x1c

    .line 1468
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 1469
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1470
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1472
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget p2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    div-float/2addr p2, p1

    invoke-static {p2, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    sub-float v1, v2, p1

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
