.class public Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;
.super Landroid/widget/FrameLayout;
.source "RecurrentPaymentsAcceptCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x10

    or-int/lit8 v8, v2, 0x10

    const/16 v9, 0x15

    const/4 v10, 0x0

    const/16 v11, 0x15

    const/4 v12, 0x0

    const/16 v6, 0x12

    const/16 v7, 0x12

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v0, p1, v2, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    .line 34
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v4

    :goto_1
    or-int/2addr p2, v5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    iget-object p1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    or-int/lit8 v8, v3, 0x30

    const/16 v0, 0x3a

    if-eqz p2, :cond_3

    move v9, v5

    goto :goto_3

    :cond_3
    move v9, v0

    :goto_3
    const/16 v10, 0x15

    if-eqz p2, :cond_4

    move v11, v0

    goto :goto_4

    :cond_4
    move v11, v5

    :goto_4
    const/16 v12, 0x15

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/RecurrentPaymentsAcceptCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
