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

    .line 819
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 808
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->isProfile:Z

    .line 886
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x12c

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDividerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 893
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x190

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 821
    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "windowBackgroundWhite"

    .line 823
    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 825
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x10

    .line 826
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 829
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

    .line 831
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    .line 832
    new-instance v1, Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/4 v3, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const-string v5, "windowBackgroundWhiteBlueText"

    invoke-static {v5, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 833
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 835
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v0, v0, v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 837
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/16 v3, 0xe

    const/16 v4, 0xe

    const/16 v5, 0x30

    const/16 v7, 0x23

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v3, "windowBackgroundWhiteGrayText2"

    .line 840
    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 841
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x78

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 842
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0xd

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 843
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

    .line 845
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link_1:I

    .line 846
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    .line 847
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    .line 849
    aget-object p1, v1, v0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 852
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1900()Landroid/graphics/Paint;

    move-result-object p1

    const-string v0, "featuredStickers_addButton"

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 853
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2000()Landroid/graphics/Paint;

    move-result-object p1

    const-string v0, "chats_unreadCounterMuted"

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)Landroid/widget/ImageView;
    .locals 0

    .line 806
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animateValueTextColor(ZZ)V
    .locals 4

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 936
    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 939
    iget v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    .line 940
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 956
    :goto_1
    iput v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 957
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p2, "windowBackgroundWhiteGrayText2"

    .line 959
    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v0, "windowBackgroundWhiteBlueText"

    .line 960
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 958
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 964
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    .line 965
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$animateValueTextColor$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 941
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v0, "windowBackgroundWhiteGrayText2"

    .line 944
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "windowBackgroundWhiteBlueText"

    .line 945
    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeViewTextColorT:F

    .line 943
    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$setLoading$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 868
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingFloat:F

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 870
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
    .locals 14

    .line 985
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v4, 0x10

    const/16 v5, 0x1d

    const/16 v6, 0x23

    const/4 v7, 0x1

    cmpg-float v8, v0, v2

    if-gez v8, :cond_1

    .line 989
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2000()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 991
    iget-object v8, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v7

    sub-float v9, v2, v0

    mul-float v9, v9, v1

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 992
    iget-object v8, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v7

    .line 993
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 994
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 995
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 996
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v13, v13, v7

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 992
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 998
    iget-object v8, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    cmpl-float v8, v0, v3

    if-lez v8, :cond_2

    .line 1001
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1900()Landroid/graphics/Paint;

    move-result-object v8

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1002
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1900()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1004
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1005
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v8

    .line 1006
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v9, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    .line 1007
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 1008
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v6, v10

    .line 1009
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v5, v10

    .line 1005
    invoke-virtual {v1, v4, v9, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1011
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->linkDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v8

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDividerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1016
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 1017
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x46

    .line 1018
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v9, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v7

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v12, v1

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1019
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1022
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1023
    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1024
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/16 v2, 0x25

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/16 v3, 0x19

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    const/16 v5, 0x15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/16 v6, 0x1b

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const v1, 0x3e99999a    # 0.3f

    .line 1025
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1027
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    const/16 v3, 0x1f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/16 v5, 0x21

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1028
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/ui/ChangeUsernameActivity;->access$2200()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 978
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    .line 979
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 977
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V
    .locals 3

    .line 896
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 897
    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    .line 898
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 899
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 900
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    .line 901
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    return-void

    .line 905
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    .line 906
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    .line 907
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->updateUsername(Ljava/lang/String;)V

    .line 908
    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->isProfile:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->UsernameProfileLinkEditable:I

    const-string v2, "UsernameProfileLinkEditable"

    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->UsernameProfileLinkActive:I

    const-string v2, "UsernameProfileLinkActive"

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UsernameProfileLinkInactive:I

    const-string v2, "UsernameProfileLinkInactive"

    goto :goto_0

    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    xor-int/2addr v2, p2

    invoke-virtual {p1, v1, p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_4

    .line 911
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->activeView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->UsernameLinkEditable:I

    const-string v2, "UsernameLinkEditable"

    :goto_2
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->UsernameLinkActive:I

    const-string v2, "UsernameLinkActive"

    goto :goto_2

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->UsernameLinkInactive:I

    const-string v2, "UsernameLinkInactive"

    goto :goto_2

    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    xor-int/2addr v2, p2

    invoke-virtual {p1, v1, p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 913
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->animateValueTextColor(ZZ)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 860
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loading:Z

    if-eq v0, p1, :cond_2

    .line 861
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loading:Z

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 866
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

    .line 867
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 880
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public update()V
    .locals 3

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v0, :cond_0

    .line 971
    iget-boolean v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->useDivider:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->set(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V

    :cond_0
    return-void
.end method

.method public updateUsername(Ljava/lang/String;)V
    .locals 5

    .line 921
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->editable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->getUsernameEditable()Ljava/lang/String;

    move-result-object p1

    .line 922
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "@"

    if-eqz v0, :cond_1

    .line 923
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 924
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lorg/telegram/messenger/R$string;->UsernameLinkPlaceholder:I

    const-string v2, "UsernameLinkPlaceholder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 925
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 926
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->usernameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 929
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
