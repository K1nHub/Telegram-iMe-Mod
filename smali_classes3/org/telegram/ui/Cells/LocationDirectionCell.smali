.class public Lorg/telegram/ui/Cells/LocationDirectionCell;
.super Landroid/widget/FrameLayout;
.source "LocationDirectionCell.java"


# instance fields
.field private buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 25
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->frameLayout:Landroid/widget/FrameLayout;

    const-string v0, "featuredStickers_addButton"

    .line 26
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/LocationDirectionCell;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object p2, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x33

    const/16 v7, 0x10

    const/16 v8, 0xa

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p1, 0x22

    .line 30
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, v0, v3, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 32
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 33
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "featuredStickers_buttonText"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/LocationDirectionCell;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 34
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 35
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->Directions:I

    const-string v0, "Directions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$drawable;->navigate:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->frameLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->buttonTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x49

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationDirectionCell;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
