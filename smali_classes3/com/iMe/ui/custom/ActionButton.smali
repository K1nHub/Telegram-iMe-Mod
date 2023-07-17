.class public Lcom/iMe/ui/custom/ActionButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionButton.kt"


# instance fields
.field private final buttonHeight$delegate:Lkotlin/Lazy;

.field private final cornerRadius$delegate:Lkotlin/Lazy;

.field private forcedButtonHeight:Ljava/lang/Integer;

.field private final horizontalPadding$delegate:Lkotlin/Lazy;

.field private isLoading:Z

.field private isLoadingBeforeDetach:Z

.field private final loadingDrawable$delegate:Lkotlin/Lazy;

.field private originalText:Ljava/lang/String;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Lcom/iMe/ui/custom/ActionButton$buttonHeight$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ActionButton$buttonHeight$2;-><init>(Lcom/iMe/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->buttonHeight$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/iMe/ui/custom/ActionButton$cornerRadius$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ActionButton$cornerRadius$2;-><init>(Lcom/iMe/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/iMe/ui/custom/ActionButton$horizontalPadding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ActionButton$horizontalPadding$2;-><init>(Lcom/iMe/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->horizontalPadding$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ActionButton$loadingDrawable$2;-><init>(Lcom/iMe/ui/custom/ActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->loadingDrawable$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->originalText:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->setupView()V

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

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$initLoadingDrawable(Lcom/iMe/ui/custom/ActionButton;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->initLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final getButtonHeight()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->buttonHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getHorizontalPadding()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->horizontalPadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->loadingDrawable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/LoadingDrawable;

    return-object v0
.end method

.method private final initLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 4

    .line 138
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    .line 140
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 141
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 144
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    return-object v0
.end method

.method private final setupView()V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    const/16 v0, 0x11

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getHorizontalPadding()I

    move-result v0

    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getHorizontalPadding()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getCornerRadius()I

    move-result v0

    .line 41
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 42
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 39
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    .line 47
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 48
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    return-void
.end method

.method protected calculateButtonHeight()I
    .locals 1

    const/16 v0, 0x2a

    .line 82
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected calculateCornerRadius()I
    .locals 1

    const/4 v0, 0x4

    .line 78
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected calculateHorizontalPadding()I
    .locals 1

    const/16 v0, 0x22

    .line 80
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method protected final getPreferredButtonHeight()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->forcedButtonHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getButtonHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 123
    iget-boolean v0, p0, Lcom/iMe/ui/custom/ActionButton;->isLoadingBeforeDetach:Z

    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/ActionButton;->updateLoadingState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/iMe/ui/custom/ActionButton;->isLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/iMe/ui/custom/ActionButton;->isLoadingBeforeDetach:Z

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/iMe/ui/custom/ActionButton;->updateLoadingState(Z)V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-boolean v0, p0, Lcom/iMe/ui/custom/ActionButton;->isLoading:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, -0x80000000

    .line 93
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 94
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ActionButton;->getPreferredButtonHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public final setForcedCustomHeight(I)V
    .locals 0

    .line 53
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ActionButton;->forcedButtonHeight:Ljava/lang/Integer;

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final updateLoadingState(Z)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/iMe/ui/custom/ActionButton;->isLoading:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->originalText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/custom/ActionButton;->originalText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/custom/ActionButton;->getLoadingDrawable()Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 70
    :goto_0
    iput-boolean p1, p0, Lcom/iMe/ui/custom/ActionButton;->isLoading:Z

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method
