.class public final Lcom/iMe/utils/hints/HintFactory;
.super Ljava/lang/Object;
.source "HintFactory.kt"


# instance fields
.field private hintView:Lorg/telegram/ui/Components/HintView;


# direct methods
.method public static synthetic $r8$lambda$o1GvFzhLKezc1iugbf6N6ZyjG90(Lcom/iMe/utils/hints/HintFactory;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/hints/HintFactory;->createHintView$lambda$2$lambda$1(Lcom/iMe/utils/hints/HintFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createHintView(Landroid/content/Context;IZ)Lorg/telegram/ui/Components/HintView;
    .locals 1

    .line 54
    new-instance v0, Lorg/telegram/ui/Components/HintView;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 56
    invoke-static {v0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 57
    new-instance p1, Lcom/iMe/utils/hints/HintFactory$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/utils/hints/HintFactory$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/utils/hints/HintFactory;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HintView;->setHideRunnable(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static final createHintView$lambda$2$lambda$1(Lcom/iMe/utils/hints/HintFactory;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/iMe/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    return-void
.end method


# virtual methods
.method public final hideHint()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_0
    return-void
.end method

.method public final showHint(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/view/View;Lcom/iMe/model/hint/HintModel;)V
    .locals 8

    const-string/jumbo v0, "parentLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/iMe/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 30
    :cond_0
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "parentLayout.view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/iMe/model/hint/HintModel;->getType()I

    move-result v1

    invoke-virtual {p3}, Lcom/iMe/model/hint/HintModel;->getTopArrow()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/utils/hints/HintFactory;->createHintView(Landroid/content/Context;IZ)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    .line 31
    invoke-virtual {p3}, Lcom/iMe/model/hint/HintModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 33
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p3}, Lcom/iMe/model/hint/HintModel;->getAutoHide()Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->createCloseButton()V

    :cond_1
    const/4 p1, 0x1

    .line 42
    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    .line 30
    iput-object v0, p0, Lcom/iMe/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    return-void
.end method
