.class public final Lcom/smedialink/ui/custom/state/GlobalStateLayout;
.super Lcom/smedialink/ui/custom/state/StatefulLayout;
.source "GlobalStateLayout.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/state/GlobalStateLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalStateLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalStateLayout.kt\ncom/smedialink/ui/custom/state/GlobalStateLayout\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,155:1\n56#2,6:156\n*S KotlinDebug\n*F\n+ 1 GlobalStateLayout.kt\ncom/smedialink/ui/custom/state/GlobalStateLayout\n*L\n33#1:156,6\n*E\n"
.end annotation


# instance fields
.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private retryButtonClickListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/state/GlobalStateLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/state/StatefulLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object p1, Lcom/smedialink/ui/custom/state/GlobalStateLayout$retryButtonClickListener$1;->INSTANCE:Lcom/smedialink/ui/custom/state/GlobalStateLayout$retryButtonClickListener$1;

    iput-object p1, p0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/custom/state/GlobalStateLayout$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/smedialink/ui/custom/state/GlobalStateLayout$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setupStates()V

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

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final configureProgressState(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 95
    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    const-string v1, "chats_actionBackground"

    .line 97
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x37

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    const-string v3, "Shape Layer 1"

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 98
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Shape Layer 2"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 100
    sget v0, Lorg/telegram/messenger/R$id;->text_state_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 101
    :goto_0
    sget v0, Lorg/telegram/messenger/R$id;->text_state_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :goto_1
    return-object p1
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;
    .locals 11

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    sget v1, Lorg/telegram/messenger/R$layout;->fork_content_global_state_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    sget v1, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x1

    .line 112
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 113
    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getIcon()I

    move-result v4

    const/16 v5, 0x96

    invoke-virtual {v1, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 115
    sget v1, Lorg/telegram/messenger/R$id;->text_state_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    invoke-direct {p0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getTitle()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "chat_messagePanelText"

    .line 117
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, ""

    .line 118
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 120
    sget v1, Lorg/telegram/messenger/R$id;->text_state_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    invoke-direct {p0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getDescription()I

    move-result p1

    invoke-interface {v5, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "dialogTextGray2"

    .line 122
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    sget p1, Lorg/telegram/messenger/R$id;->button_retry:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 125
    invoke-direct {p0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->common_retry:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v5, p1, v3, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    const-string p1, "chats_actionBackground"

    .line 127
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    new-instance v8, Lcom/smedialink/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;

    invoke-direct {v8, p0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout$getStateView$1$4$1;-><init>(Lcom/smedialink/ui/custom/state/GlobalStateLayout;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    const-string p1, "from(context)\n          \u2026          }\n            }"

    .line 110
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hideActionButton(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 145
    sget v0, Lorg/telegram/messenger/R$id;->button_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method private final setupStates()V
    .locals 2

    .line 85
    sget-object v0, Lcom/smedialink/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/smedialink/model/state/GlobalState$NoInternet;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 86
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Unexpected;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 87
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Common;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 88
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Balance;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Balance;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 89
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Staking;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 90
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/smedialink/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->configureProgressState(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic showEmpty$default(Lcom/smedialink/ui/custom/state/GlobalStateLayout;Lcom/smedialink/model/state/GlobalState$Empty;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 49
    sget-object p1, Lcom/smedialink/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Common;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->showEmpty(Lcom/smedialink/model/state/GlobalState$Empty;)V

    return-void
.end method

.method private final startAnimation(Ljava/lang/String;)V
    .locals 1

    .line 133
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :goto_0
    return-void
.end method

.method private final stopAnimation(Ljava/lang/String;)V
    .locals 1

    .line 139
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {v0}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getRetryButtonClickListener()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final isContentState()Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {v1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->stopAnimation(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setInternalState(Lcom/smedialink/model/state/GlobalState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->stopAnimation(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/smedialink/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/StatefulLayout;->setState(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->startAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public final setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final showContent()V
    .locals 1

    .line 42
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public final showEmpty(Lcom/smedialink/model/state/GlobalState$Empty;)V
    .locals 1

    const-string v0, "emptyState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public final showNoInternetError()V
    .locals 1

    .line 54
    sget-object v0, Lcom/smedialink/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/smedialink/model/state/GlobalState$NoInternet;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public final showProgress()V
    .locals 1

    .line 46
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public final showUnexpectedError()V
    .locals 1

    .line 58
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Unexpected;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method
