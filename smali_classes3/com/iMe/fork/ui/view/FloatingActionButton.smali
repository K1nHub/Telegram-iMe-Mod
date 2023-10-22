.class public final Lcom/iMe/fork/ui/view/FloatingActionButton;
.super Landroid/widget/FrameLayout;
.source "FloatingActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/FloatingActionButton$Companion;
    }
.end annotation


# instance fields
.field private final buttonSize$delegate:Lkotlin/Lazy;

.field private final iconView$delegate:Lkotlin/Lazy;

.field private isLoading:Z

.field private final loadingAnimationSize$delegate:Lkotlin/Lazy;

.field private originalIconResId:Ljava/lang/Integer;

.field private final translationZDefault$delegate:Lkotlin/Lazy;

.field private final translationZPressed$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/FloatingActionButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/FloatingActionButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Lcom/iMe/fork/ui/view/FloatingActionButton$iconView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FloatingActionButton$iconView$2;-><init>(Lcom/iMe/fork/ui/view/FloatingActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->iconView$delegate:Lkotlin/Lazy;

    .line 30
    sget-object p1, Lcom/iMe/fork/ui/view/FloatingActionButton$translationZDefault$2;->INSTANCE:Lcom/iMe/fork/ui/view/FloatingActionButton$translationZDefault$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->translationZDefault$delegate:Lkotlin/Lazy;

    .line 31
    sget-object p1, Lcom/iMe/fork/ui/view/FloatingActionButton$translationZPressed$2;->INSTANCE:Lcom/iMe/fork/ui/view/FloatingActionButton$translationZPressed$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->translationZPressed$delegate:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lcom/iMe/fork/ui/view/FloatingActionButton$buttonSize$2;->INSTANCE:Lcom/iMe/fork/ui/view/FloatingActionButton$buttonSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->buttonSize$delegate:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lcom/iMe/fork/ui/view/FloatingActionButton$loadingAnimationSize$2;->INSTANCE:Lcom/iMe/fork/ui/view/FloatingActionButton$loadingAnimationSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->loadingAnimationSize$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Landroid/animation/StateListAnimator;

    invoke-direct {p1}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 p2, 0x1

    new-array p3, p2, [I

    const v0, 0x10100a7

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 44
    sget-object v0, Landroid/widget/FrameLayout;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 45
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getTranslationZPressed()F

    move-result v4

    aput v4, v3, v1

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getTranslationZDefault()F

    move-result v4

    aput v4, v3, p2

    .line 42
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 48
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 39
    invoke-virtual {p1, p3, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array p3, v1, [I

    new-array v2, v2, [F

    .line 56
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getTranslationZDefault()F

    move-result v3

    aput v3, v2, v1

    .line 57
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getTranslationZPressed()F

    move-result v1

    aput v1, v2, p2

    .line 53
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 59
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 62
    new-instance p1, Lcom/iMe/fork/ui/view/FloatingActionButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FloatingActionButton$2;-><init>(Lcom/iMe/fork/ui/view/FloatingActionButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->updateColors()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getButtonSize(Lcom/iMe/fork/ui/view/FloatingActionButton;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getButtonSize()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$initIconView(Lcom/iMe/fork/ui/view/FloatingActionButton;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->initIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getButtonSize()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->buttonSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->iconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method private final getLoadingAnimationSize()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->loadingAnimationSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getTranslationZDefault()F
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->translationZDefault$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getTranslationZPressed()F
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->translationZPressed$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final initIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 2

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method


# virtual methods
.method public final setIcon(I)V
    .locals 1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->originalIconResId:Ljava/lang/Integer;

    .line 75
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getButtonSize()I

    move-result v0

    .line 81
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 82
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 79
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 85
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 86
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 84
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final updateLoadingState(Z)V
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->isLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iput-boolean p1, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->isLoading:Z

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    .line 95
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->isLoading:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 97
    sget v0, Lorg/telegram/messenger/R$raw;->fork_state_progress:I

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getLoadingAnimationSize()I

    move-result v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->getLoadingAnimationSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 98
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    .line 101
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FloatingActionButton;->originalIconResId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
