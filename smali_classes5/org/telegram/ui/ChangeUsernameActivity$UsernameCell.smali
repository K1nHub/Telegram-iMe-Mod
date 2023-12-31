.class public Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
.super Landroid/widget/FrameLayout;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangeUsernameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameCell"
.end annotation


# instance fields
.field public active:Z

.field private activeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private activeView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

.field private activeViewTextColorT:F

.field private botId:J

.field public currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

.field public editable:Z

.field public isProfile:Z

.field private linkDrawables:[Landroid/graphics/drawable/Drawable;

.field public loading:Z

.field public loadingAnimator:Landroid/animation/ValueAnimator;

.field private loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field public loadingFloat:F

.field private loadingView:Landroid/widget/ImageView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private useDivider:Z

.field private useDividerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$6T2hLXmnrZWHvaDpnrRk0QI-0AU(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->lambda$animateValueTextColor$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MK31BEAQyGFl-qhCNmZ8U2AtSAQ(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->lambda$setLoading$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 941
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 930
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->isProfile:Z

    .line 1009
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x12c

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDividerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1016
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x190

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 943
    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 945
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 947
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x10

    .line 948
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 950
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 951
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x30

    const/16 v6, 0x46

    const/16 v7, 0x9

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    .line 954
    new-instance v1, Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/4 v3, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v5, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 955
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 957
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v0, v0, v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 959
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/16 v3, 0xe

    const/16 v4, 0xe

    const/16 v5, 0x30

    const/16 v7, 0x23

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 962
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 963
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x78

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 964
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0xd

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 965
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x30

    const/16 v6, 0x46

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 967
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link_1:I

    .line 968
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    .line 969
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    .line 971
    aget-object p1, v1, v0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 972
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 974
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 975
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2300()Landroid/graphics/Paint;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)Landroid/widget/ImageView;
    .locals 0

    .line 928
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animateValueTextColor(ZZ)V
    .locals 4

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 1067
    iget v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 1068
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1080
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1081
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1082
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1084
    :goto_1
    iput v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 1085
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1087
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1088
    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 1086
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 1092
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    .line 1093
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$animateValueTextColor$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1069
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 1070
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1072
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1073
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 1071
    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$setLoading$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 990
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingFloat:F

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 992
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingFloat:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected getUsernameEditable()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1113
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1115
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    cmpg-float v1, v8, v3

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v5, 0x10

    const/16 v6, 0x1d

    const/16 v9, 0x23

    const/4 v10, 0x1

    if-gez v1, :cond_1

    .line 1117
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2300()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v7, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1119
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v10

    sub-float v11, v3, v8

    mul-float/2addr v11, v2

    float-to-int v11, v11

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1120
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v10

    .line 1121
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    .line 1122
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 1123
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1124
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v15, v15, v10

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 1120
    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1126
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v10

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    cmpl-float v1, v8, v4

    if-lez v1, :cond_2

    .line 1129
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v1

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1130
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v7, v1, v11, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    .line 1134
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v11, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v2, v11

    .line 1135
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    .line 1136
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v12, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v9, v12

    .line 1137
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v6, v12

    .line 1133
    invoke-virtual {v1, v2, v11, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1142
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDividerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_4

    .line 1144
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    .line 1145
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v9

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x46

    .line 1146
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1147
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1150
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2500()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1151
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2500()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2500()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1152
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/16 v3, 0x25

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/16 v4, 0x19

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    const/16 v6, 0x15

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    const/16 v8, 0x1b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v2, v4, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const v2, 0x3e99999a    # 0.3f

    .line 1153
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2500()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v7, v1, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    const/16 v4, 0x1f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/16 v6, 0x21

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1156
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2500()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    .line 1107
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1105
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1019
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZJ)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZJ)V
    .locals 3

    .line 1023
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1024
    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    .line 1025
    iput-wide p4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->botId:J

    .line 1026
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1027
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1028
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    .line 1029
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    return-void

    .line 1033
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    const-wide/16 v1, 0x0

    cmp-long p2, p4, v1

    const/4 p4, 0x1

    if-nez p2, :cond_1

    .line 1034
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz p2, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    .line 1035
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->updateUsername(Ljava/lang/String;)V

    .line 1036
    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->isProfile:Z

    if-eqz p1, :cond_4

    .line 1037
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->UsernameProfileLinkEditable:I

    const-string p5, "UsernameProfileLinkEditable"

    :goto_1
    invoke-static {p5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-eqz p2, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->UsernameProfileLinkActive:I

    const-string p5, "UsernameProfileLinkActive"

    goto :goto_1

    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->UsernameProfileLinkInactive:I

    const-string p5, "UsernameProfileLinkInactive"

    goto :goto_1

    :goto_2
    iget-boolean p5, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    xor-int/2addr p5, p4

    invoke-virtual {p1, p2, p3, p5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_5

    .line 1039
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz p2, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->UsernameLinkEditable:I

    const-string p5, "UsernameLinkEditable"

    :goto_3
    invoke-static {p5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    iget-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->UsernameLinkActive:I

    const-string p5, "UsernameLinkActive"

    goto :goto_3

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->UsernameLinkInactive:I

    const-string p5, "UsernameLinkInactive"

    goto :goto_3

    :goto_4
    iget-boolean p5, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    xor-int/2addr p5, p4

    invoke-virtual {p1, p2, p3, p5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 1041
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz p1, :cond_8

    :cond_7
    move v0, p4

    :cond_8
    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->animateValueTextColor(ZZ)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 982
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loading:Z

    if-eq v0, p1, :cond_2

    .line 983
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loading:Z

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 987
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 988
    iget v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingFloat:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    .line 989
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1000
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1001
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public update()V
    .locals 6

    .line 1098
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v1, :cond_0

    .line 1099
    iget-boolean v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    const/4 v3, 0x1

    iget-wide v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->botId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZJ)V

    :cond_0
    return-void
.end method

.method public updateUsername(Ljava/lang/String;)V
    .locals 5

    .line 1049
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->getUsernameEditable()Ljava/lang/String;

    move-result-object p1

    .line 1050
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "@"

    if-eqz v0, :cond_1

    .line 1051
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1052
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lorg/telegram/messenger/R$string;->UsernameLinkPlaceholder:I

    const-string v2, "UsernameLinkPlaceholder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1053
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1054
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method
