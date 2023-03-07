.class public final Lcom/smedialink/utils/hints/HintFactory;
.super Ljava/lang/Object;
.source "HintFactory.kt"


# instance fields
.field private hintView:Lorg/telegram/ui/Components/HintView;


# direct methods
.method public static synthetic $r8$lambda$kR3OFHOBYzlXOYylm4HQCuEZgsU(Lcom/smedialink/utils/hints/HintFactory;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/utils/hints/HintFactory;->createHintView$lambda-2$lambda-1(Lcom/smedialink/utils/hints/HintFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createHintView(Landroid/content/Context;IZ)Lorg/telegram/ui/Components/HintView;
    .locals 1

    .line 50
    new-instance v0, Lorg/telegram/ui/Components/HintView;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 52
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 53
    new-instance p1, Lcom/smedialink/utils/hints/HintFactory$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/smedialink/utils/hints/HintFactory$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/utils/hints/HintFactory;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HintView;->setHideRunnable(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static final createHintView$lambda-2$lambda-1(Lcom/smedialink/utils/hints/HintFactory;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/smedialink/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    return-void
.end method


# virtual methods
.method public final hideHint()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :goto_0
    return-void
.end method

.method public final showHint(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/view/View;Lcom/smedialink/model/hint/HintModel;)V
    .locals 8

    const-string v0, "parentLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/smedialink/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 31
    :goto_0
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parentLayout.view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/smedialink/model/hint/HintModel;->getType()I

    move-result v1

    invoke-virtual {p3}, Lcom/smedialink/model/hint/HintModel;->getTopArrow()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/utils/hints/HintFactory;->createHintView(Landroid/content/Context;IZ)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    .line 32
    invoke-virtual {p3}, Lcom/smedialink/model/hint/HintModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p3}, Lcom/smedialink/model/hint/HintModel;->getAutoHide()Z

    move-result p3

    invoke-virtual {v0, p2, p1, p3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;ZZ)Z

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    iput-object v0, p0, Lcom/smedialink/utils/hints/HintFactory;->hintView:Lorg/telegram/ui/Components/HintView;

    return-void
.end method
