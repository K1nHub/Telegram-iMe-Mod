.class public final Lcom/smedialink/ui/topics/TopicProfileCell;
.super Landroid/widget/FrameLayout;
.source "TopicProfileCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/topics/TopicProfileCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicProfileCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicProfileCell.kt\ncom/smedialink/ui/topics/TopicProfileCell\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private final currentAccount:I

.field private final deleteImageView$delegate:Lkotlin/Lazy;

.field private final dialogId:J

.field private final selectTopicTextView$delegate:Lkotlin/Lazy;

.field private final topicView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$yB4cqtnntuQNaxhAcu4kIfIw9Co(Lcom/smedialink/ui/topics/TopicProfileCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/topics/TopicProfileCell;->setupListeners$lambda-6(Lcom/smedialink/ui/topics/TopicProfileCell;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/topics/TopicProfileCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/topics/TopicProfileCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-wide p2, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->dialogId:J

    .line 32
    new-instance p2, Lcom/smedialink/ui/topics/TopicProfileCell$topicView$2;

    invoke-direct {p2, p1}, Lcom/smedialink/ui/topics/TopicProfileCell$topicView$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->topicView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/smedialink/ui/topics/TopicProfileCell$selectTopicTextView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/topics/TopicProfileCell$selectTopicTextView$2;-><init>(Lcom/smedialink/ui/topics/TopicProfileCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->selectTopicTextView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/topics/TopicProfileCell$deleteImageView$2;-><init>(Lcom/smedialink/ui/topics/TopicProfileCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->deleteImageView$delegate:Lkotlin/Lazy;

    .line 35
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->currentAccount:I

    .line 39
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x13

    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x30

    const/16 v1, 0x30

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->setupListeners()V

    .line 43
    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->updateColors()V

    return-void
.end method

.method public static final synthetic access$initDeleteImageView(Lcom/smedialink/ui/topics/TopicProfileCell;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->initDeleteImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSelectTopicTextView(Lcom/smedialink/ui/topics/TopicProfileCell;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->initSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteImageView()Landroid/widget/ImageView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->deleteImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->selectTopicTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method private final getTopicView()Lcom/smedialink/ui/topics/TopicView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->topicView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/topics/TopicView;

    return-object v0
.end method

.method private final initDeleteImageView()Landroid/widget/ImageView;
    .locals 2

    .line 114
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    sget v1, Lorg/telegram/messenger/R$drawable;->plus:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 109
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 110
    sget v1, Lorg/telegram/messenger/R$string;->topics_select:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x10

    .line 111
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/topics/TopicProfileCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/topics/TopicProfileCell$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/topics/TopicProfileCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-6(Lcom/smedialink/ui/topics/TopicProfileCell;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->animator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    sget-object p1, Lorg/fork/controller/ForkTopicsController;->Companion:Lorg/fork/controller/ForkTopicsController$Companion;

    iget v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->currentAccount:I

    invoke-virtual {p1, v0}, Lorg/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/fork/controller/ForkTopicsController;->removeTopicDialog(J)V

    return-void
.end method


# virtual methods
.method public final getDialogId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->dialogId:J

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    .line 101
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setData(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string v3, "stickers_menuSelector"

    .line 54
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/smedialink/ui/topics/TopicView;->setTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;Z)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    .line 67
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    sget-object v5, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v1, [F

    const/high16 v7, -0x3dc00000    # -48.0f

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    const/high16 v9, -0x3dc00000    # -48.0f

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 68
    :goto_1
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v6, v0

    .line 67
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    sget-object v5, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    aput v10, v6, v0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    .line 73
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v5

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_3

    const/4 v7, 0x0

    .line 74
    :cond_3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v10, v0

    .line 73
    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 76
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v5

    sget-object v6, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    aput v9, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 79
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Landroid/widget/FrameLayout;->ROTATION:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_5

    const/high16 v8, 0x43070000    # 135.0f

    :cond_5
    aput v8, v1, v0

    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v4

    .line 66
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 83
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 84
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iput-object v2, p0, Lcom/smedialink/ui/topics/TopicProfileCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateColors()V
    .locals 4

    .line 89
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getTopicView()Lcom/smedialink/ui/topics/TopicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/topics/TopicView;->updateColors()V

    .line 90
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getSelectTopicTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 91
    invoke-direct {p0}, Lcom/smedialink/ui/topics/TopicProfileCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "switch2TrackChecked"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
