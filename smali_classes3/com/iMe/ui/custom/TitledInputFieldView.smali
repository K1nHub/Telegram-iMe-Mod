.class public final Lcom/iMe/ui/custom/TitledInputFieldView;
.super Landroid/widget/FrameLayout;
.source "TitledInputFieldView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTitledInputFieldView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TitledInputFieldView.kt\ncom/iMe/ui/custom/TitledInputFieldView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

.field private customView:Landroid/view/View;

.field private customViewColorsUpdateAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ngb-aAvgZqR4jDwS7-GT0uQR9kg(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/TitledInputFieldView;->customViewColorsUpdateAction$lambda$1(Landroid/view/View;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/TitledInputFieldView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-object p2, Lcom/iMe/ui/custom/TitledInputFieldView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/custom/TitledInputFieldView$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customViewColorsUpdateAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupView()V

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

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/TitledInputFieldView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final customViewColorsUpdateAction$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final setupView()V
    .locals 8

    .line 60
    invoke-virtual {p0}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    .line 61
    invoke-virtual {p0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v7

    const/4 v0, -0x4

    .line 62
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v3

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins$default(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 64
    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkActionView;->hideAvatarsContainer()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsViewClickable(Z)V

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customView:Landroid/view/View;

    return-object v0
.end method

.method public final getCustomViewColorsUpdateAction()Lcom/iMe/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customViewColorsUpdateAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final getInputView()Lorg/telegram/ui/Components/LinkActionView;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->viewInput:Lorg/telegram/ui/Components/LinkActionView;

    const-string v1, "binding.viewInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->frameContainer:Landroid/widget/FrameLayout;

    .line 28
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomViewColorsUpdateAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customViewColorsUpdateAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setupColors()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    .line 46
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->textTitle:Landroid/widget/TextView;

    .line 47
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "setupColors$lambda$3$lambda$2"

    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 50
    invoke-virtual {p0}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->customViewColorsUpdateAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {v1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setupInputLayoutParams(II)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/custom/TitledInputFieldView;->binding:Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTitledInputFieldBinding;->viewInput:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setupContainerCustomSize(II)V

    return-void
.end method
