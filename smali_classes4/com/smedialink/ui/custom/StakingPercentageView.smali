.class public final Lcom/smedialink/ui/custom/StakingPercentageView;
.super Landroid/widget/FrameLayout;
.source "StakingPercentageView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingPercentageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingPercentageView.kt\ncom/smedialink/ui/custom/StakingPercentageView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,155:1\n56#2,6:156\n*S KotlinDebug\n*F\n+ 1 StakingPercentageView.kt\ncom/smedialink/ui/custom/StakingPercentageView\n*L\n33#1:156,6\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

.field private isThresholdReached:Z

.field private progress:F

.field private final progressSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider$delegate:Lkotlin/Lazy;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$ZIXwdA0xDPkDtsvmamH-P8cOlO8(Lcom/smedialink/ui/custom/StakingPercentageView;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupProgressListener$lambda-7(Lcom/smedialink/ui/custom/StakingPercentageView;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yc8Kw64xdV9ony4Fo9c19Hka2bg(Lcom/smedialink/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupProgressListener$lambda-7$lambda-6$lambda-5(Lcom/smedialink/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/smedialink/ui/custom/StakingPercentageView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/custom/StakingPercentageView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 40
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "create<Float>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 41
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 44
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupView()V

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

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, " %"

    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final setupProgressListener()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 128
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/smedialink/ui/custom/StakingPercentageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/custom/StakingPercentageView$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/custom/StakingPercentageView;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "progressSubject\n        \u2026olors()\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final setupProgressListener$lambda-7(Lcom/smedialink/ui/custom/StakingPercentageView;Ljava/lang/Float;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 133
    iget v1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->progress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "newProgress"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/smedialink/ui/custom/StakingPercentageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/custom/StakingPercentageView$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/custom/StakingPercentageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 133
    iput-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->progress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    .line 139
    :cond_1
    iput-boolean v2, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->isThresholdReached:Z

    .line 140
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupColors()V

    return-void
.end method

.method private static final setupProgressListener$lambda-7$lambda-6$lambda-5(Lcom/smedialink/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->viewProgress:Lcom/smedialink/ui/custom/ProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/ProgressView;->updateProgress(F)V

    return-void
.end method

.method private final setupTexts()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupColors()V

    .line 120
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupProgressListener()V

    .line 121
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupTexts()V

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 103
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 104
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingPercentageView;->setupProgressListener()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setupColors()V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 70
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApr:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iget-boolean v2, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->isThresholdReached:Z

    const-string v3, "windowBackgroundWhiteBlueText"

    const-string v4, "windowBackgroundWhiteGrayText"

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 72
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, ""

    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 79
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApy:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    iget-boolean v5, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->isThresholdReached:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 81
    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 88
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 89
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 90
    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setBoundedCircleRippleBackground(Landroid/view/View;)V

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->viewProgress:Lcom/smedialink/ui/custom/ProgressView;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/ProgressView;->setupColors()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 93
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "textStartValue"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textThresholdValue"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    return-void
.end method

.method public final setupViewData(Lcom/smedialink/model/staking/StakingAnnualPercentageData;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "onInfoClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 54
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;

    invoke-direct {v4, p2}, Lcom/smedialink/ui/custom/StakingPercentageView$setupViewData$1$1;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApr:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingAnnualPercentageData;->getApr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smedialink/ui/custom/StakingPercentageView;->getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApy:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingAnnualPercentageData;->getApy()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smedialink/ui/custom/StakingPercentageView;->getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingAnnualPercentageData;->getCompoundThreshold()Ljava/lang/String;

    move-result-object p1

    const-string v0, "+"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgress(F)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
