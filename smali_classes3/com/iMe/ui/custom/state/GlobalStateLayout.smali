.class public final Lcom/iMe/ui/custom/state/GlobalStateLayout;
.super Lcom/iMe/ui/custom/state/StatefulLayout;
.source "GlobalStateLayout.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/state/GlobalStateLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalStateLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalStateLayout.kt\ncom/iMe/ui/custom/state/GlobalStateLayout\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,219:1\n56#2,6:220\n*S KotlinDebug\n*F\n+ 1 GlobalStateLayout.kt\ncom/iMe/ui/custom/state/GlobalStateLayout\n*L\n32#1:220,6\n*E\n"
.end annotation


# instance fields
.field private emptyButtonClickListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

    new-instance v0, Lcom/iMe/ui/custom/state/GlobalStateLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/state/GlobalStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/state/StatefulLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object p1, Lcom/iMe/ui/custom/state/GlobalStateLayout$retryButtonClickListener$1;->INSTANCE:Lcom/iMe/ui/custom/state/GlobalStateLayout$retryButtonClickListener$1;

    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    .line 30
    sget-object p1, Lcom/iMe/ui/custom/state/GlobalStateLayout$emptyButtonClickListener$1;->INSTANCE:Lcom/iMe/ui/custom/state/GlobalStateLayout$emptyButtonClickListener$1;

    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->emptyButtonClickListener:Lkotlin/jvm/functions/Function0;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/custom/state/GlobalStateLayout$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/custom/state/GlobalStateLayout$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->resourceManager$delegate:Lkotlin/Lazy;

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setupStates()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/state/GlobalStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final configureProgressState(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    .line 135
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v2

    const-string v3, "Shape Layer 1"

    .line 133
    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 137
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const-string v2, "Shape Layer 2"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 139
    sget v0, Lorg/telegram/messenger/R$id;->text_state_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v4, "findViewById<AppCompatTe\u2026w>(R.id.text_state_title)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 140
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->text_state_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    const-string v4, "findViewById<AppCompatTe\u2026d.text_state_description)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;
    .locals 9

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    sget v1, Lorg/telegram/messenger/R$layout;->fork_content_global_state_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    sget v1, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/iMe/model/state/GlobalState;->getIcon()I

    move-result v3

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 152
    sget v1, Lorg/telegram/messenger/R$id;->text_state_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iMe/model/state/GlobalState;->getTitle()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    sget v1, Lorg/telegram/messenger/R$id;->text_state_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iMe/model/state/GlobalState;->getDescription()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_1
    sget v1, Lorg/telegram/messenger/R$id;->button_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 159
    sget-object v4, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 160
    :cond_2
    sget-object v2, Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->token_search_empty_result_add_token:I

    goto :goto_3

    .line 162
    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->common_retry:I

    .line 157
    :goto_3
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "getStateView$lambda$5$lambda$4"

    .line 165
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;

    invoke-direct {v6, p1, p0}, Lcom/iMe/ui/custom/state/GlobalStateLayout$getStateView$1$2$1;-><init>(Lcom/iMe/model/state/GlobalState;Lcom/iMe/ui/custom/state/GlobalStateLayout;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    const-string p1, "this"

    .line 177
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setupColors(Landroid/view/View;)V

    const-string p1, "from(context)\n          \u2026olors(this)\n            }"

    .line 147
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hideActionButton(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 211
    sget v0, Lorg/telegram/messenger/R$id;->button_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method private final setupColors(Landroid/view/View;)V
    .locals 3

    .line 182
    sget v0, Lorg/telegram/messenger/R$id;->text_state_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    const-string v1, "findViewById<AppCompatTe\u2026w>(R.id.text_state_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 186
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->text_state_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    const-string v1, "findViewById<AppCompatTe\u2026d.text_state_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->button_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_2

    const-string v0, "findViewById<AppCompatButton>(R.id.button_retry)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 191
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private final setupStates()V
    .locals 2

    .line 86
    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 87
    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 89
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchResult;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 93
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$CustomTokens;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 97
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 101
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Balance;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Balance;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 105
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 109
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Twitter;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Twitter;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 113
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 117
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 121
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState$Empty;->getState()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    .line 125
    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->getStateView(Lcom/iMe/model/state/GlobalState;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->hideActionButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->configureProgressState(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/custom/state/StatefulLayout;->setStateView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic showEmpty$default(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/model/state/GlobalState$Empty;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 46
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showEmpty(Lcom/iMe/model/state/GlobalState$Empty;)V

    return-void
.end method

.method private final startAnimation(Ljava/lang/String;)V
    .locals 1

    .line 197
    sget-object v0, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_1
    return-void
.end method

.method private final stopAnimation(Ljava/lang/String;)V
    .locals 1

    .line 204
    sget-object v0, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    invoke-virtual {v0}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lorg/telegram/messenger/R$id;->image_state_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getEmptyButtonClickListener()Lkotlin/jvm/functions/Function0;
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
    iget-object v0, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->emptyButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

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

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final isContentState()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/iMe/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    invoke-virtual {v1}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/iMe/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->stopAnimation(Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setEmptyButtonClickListener(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->emptyButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setInternalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/iMe/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->stopAnimation(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/iMe/model/state/GlobalState;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/StatefulLayout;->setState(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/iMe/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/StatefulLayout;->getStateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setupColors(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/custom/state/StatefulLayout;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->startAnimation(Ljava/lang/String;)V

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

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/custom/state/GlobalStateLayout;->retryButtonClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final showContent()V
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public final showEmpty(Lcom/iMe/model/state/GlobalState$Empty;)V
    .locals 1

    const-string v0, "emptyState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public final showNoInternetError()V
    .locals 1

    .line 51
    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public final showProgress()V
    .locals 1

    .line 43
    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public final showUnexpectedError()V
    .locals 1

    .line 55
    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method
