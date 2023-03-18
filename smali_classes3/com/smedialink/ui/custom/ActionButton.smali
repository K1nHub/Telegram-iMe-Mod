.class public Lcom/smedialink/ui/custom/ActionButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionButton.kt"


# instance fields
.field private final buttonHeight$delegate:Lkotlin/Lazy;

.field private final cornerRadius$delegate:Lkotlin/Lazy;

.field private forcedButtonHeight:Ljava/lang/Integer;

.field private final horizontalPadding$delegate:Lkotlin/Lazy;


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/smedialink/ui/custom/ActionButton$buttonHeight$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ActionButton$buttonHeight$2;-><init>(Lcom/smedialink/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ActionButton;->buttonHeight$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lcom/smedialink/ui/custom/ActionButton$cornerRadius$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ActionButton$cornerRadius$2;-><init>(Lcom/smedialink/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ActionButton;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 22
    new-instance p1, Lcom/smedialink/ui/custom/ActionButton$horizontalPadding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ActionButton$horizontalPadding$2;-><init>(Lcom/smedialink/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ActionButton;->horizontalPadding$delegate:Lkotlin/Lazy;

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ActionButton;->setupView()V

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

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/ui/custom/ActionButton;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getHorizontalPadding()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/ui/custom/ActionButton;->horizontalPadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final setupView()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/ActionButton;->applyColors()V

    const/16 v0, 0x11

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ActionButton;->getHorizontalPadding()I

    move-result v0

    invoke-direct {p0}, Lcom/smedialink/ui/custom/ActionButton;->getHorizontalPadding()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ActionButton;->getCornerRadius()I

    move-result v0

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "chats_actionPressedBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "chats_actionIcon"

    .line 33
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method protected calculateButtonHeight()I
    .locals 1

    const/16 v0, 0x2a

    .line 50
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected calculateCornerRadius()I
    .locals 1

    const/4 v0, 0x4

    .line 46
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected calculateHorizontalPadding()I
    .locals 1

    const/16 v0, 0x22

    .line 48
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected final getButtonHeight()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/ui/custom/ActionButton;->buttonHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getPreferredButtonHeight()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/custom/ActionButton;->forcedButtonHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/ActionButton;->getButtonHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, -0x80000000

    .line 61
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 62
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/ActionButton;->getPreferredButtonHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public final setForcedCustomHeight(I)V
    .locals 0

    .line 38
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ActionButton;->forcedButtonHeight:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
