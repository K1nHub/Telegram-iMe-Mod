.class public final Lcom/iMe/ui/custom/StakingPercentageView;
.super Landroid/widget/FrameLayout;
.source "StakingPercentageView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingPercentageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingPercentageView.kt\ncom/iMe/ui/custom/StakingPercentageView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,163:1\n56#2,6:164\n*S KotlinDebug\n*F\n+ 1 StakingPercentageView.kt\ncom/iMe/ui/custom/StakingPercentageView\n*L\n37#1:164,6\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

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
.method public static synthetic $r8$lambda$2a9C4R18NBQduwHK93UW0YTRgUU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingPercentageView;->setupProgressListener$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w2Zfp-Ei4JJFTX_srDhh5vK-Xos(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingPercentageView;->setupViewData$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/StakingPercentageView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/StakingPercentageView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/iMe/ui/custom/StakingPercentageView;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 44
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "create<Float>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 45
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->setupView()V

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

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAnimator$p(Lcom/iMe/ui/custom/StakingPercentageView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/iMe/ui/custom/StakingPercentageView;)Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    return-object p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/iMe/ui/custom/StakingPercentageView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->progress:F

    return p0
.end method

.method public static final synthetic access$setAnimator$p(Lcom/iMe/ui/custom/StakingPercentageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setProgress$p(Lcom/iMe/ui/custom/StakingPercentageView;F)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->progress:F

    return-void
.end method

.method public static final synthetic access$setThresholdReached$p(Lcom/iMe/ui/custom/StakingPercentageView;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->isThresholdReached:Z

    return-void
.end method

.method private final getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final setupProgressListener()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 136
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/custom/StakingPercentageView$setupProgressListener$1;-><init>(Lcom/iMe/ui/custom/StakingPercentageView;)V

    new-instance v2, Lcom/iMe/ui/custom/StakingPercentageView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/custom/StakingPercentageView$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "private fun setupProgres\u2026pose(subscriptions)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/iMe/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final setupProgressListener$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setupTexts()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->setupColors()V

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->setupProgressListener()V

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->setupTexts()V

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final setupViewData$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onInfoClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 30
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPercentageView;->setupProgressListener()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->animator:Landroid/animation/ValueAnimator;

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setupColors()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 74
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApr:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    iget-boolean v2, p0, Lcom/iMe/ui/custom/StakingPercentageView;->isThresholdReached:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    goto :goto_0

    .line 78
    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    .line 76
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$5$lambda$2"

    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 83
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApy:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    iget-boolean v2, p0, Lcom/iMe/ui/custom/StakingPercentageView;->isThresholdReached:Z

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    goto :goto_1

    .line 87
    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    .line 85
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$5$lambda$3"

    .line 90
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "setupColors$lambda$5$lambda$4"

    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 94
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setBoundedCircleRippleBackground(Landroid/view/View;)V

    .line 96
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->viewProgress:Lcom/iMe/ui/custom/ProgressView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ProgressView;->setupColors()V

    .line 98
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 99
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textStartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "textStartValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 100
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textThresholdValue"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v2, v3

    .line 97
    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    return-void
.end method

.method public final setupViewData(Lcom/iMe/model/staking/StakingAnnualPercentageData;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    const-string v0, "onInfoClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;

    .line 58
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->imageInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/iMe/ui/custom/StakingPercentageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/iMe/ui/custom/StakingPercentageView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApr:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingAnnualPercentageData;->getApr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iMe/ui/custom/StakingPercentageView;->getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textApy:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingAnnualPercentageData;->getApy()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iMe/ui/custom/StakingPercentageView;->getAnnualPercentageText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingCompoundBinding;->textThresholdValue:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingAnnualPercentageData;->getCompoundThreshold()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgress(F)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPercentageView;->progressSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
