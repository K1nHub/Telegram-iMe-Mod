.class public Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "ClearHistoryAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ClearHistoryAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private background:Landroid/view/View;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 84
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->background:Landroid/view/View;

    const/4 v0, 0x4

    .line 85
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->background:Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 90
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 91
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 p2, -0x2

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->background:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x50

    .line 102
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
