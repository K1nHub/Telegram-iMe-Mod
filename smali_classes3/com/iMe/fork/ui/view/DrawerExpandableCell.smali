.class public final Lcom/iMe/fork/ui/view/DrawerExpandableCell;
.super Landroid/widget/FrameLayout;
.source "DrawerExpandableCell.kt"


# instance fields
.field private final arrowView$delegate:Lkotlin/Lazy;

.field private expandedState:Z

.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lcom/iMe/fork/ui/view/DrawerExpandableCell$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell$textView$2;-><init>(Lcom/iMe/fork/ui/view/DrawerExpandableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->textView$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/iMe/fork/ui/view/DrawerExpandableCell$arrowView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell$arrowView$2;-><init>(Lcom/iMe/fork/ui/view/DrawerExpandableCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->arrowView$delegate:Lkotlin/Lazy;

    .line 37
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x33

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 38
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getArrowView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x3b

    const/16 v1, 0x30

    const/16 v2, 0x55

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initArrowView(Lcom/iMe/fork/ui/view/DrawerExpandableCell;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->initArrowView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/fork/ui/view/DrawerExpandableCell;)Landroid/widget/TextView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->initTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getArrowView()Landroid/widget/ImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->arrowView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initArrowView()Landroid/widget/ImageView;
    .locals 4

    .line 111
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 114
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 115
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 113
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 117
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_expand:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final initTextView()Landroid/widget/TextView;
    .locals 3

    .line 102
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 104
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/16 v1, 0x13

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x1d

    .line 106
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 107
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final setImageByExpandedState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getArrowView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 123
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 86
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    .line 89
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setExpandedState(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->expandedState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->expandedState:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->setImageByExpandedState(Z)V

    return-void
.end method

.method public final setTextAndIcon(Ljava/lang/String;I)V
    .locals 3

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 62
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 63
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 61
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
