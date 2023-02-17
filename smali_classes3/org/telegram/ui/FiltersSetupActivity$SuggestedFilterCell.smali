.class public Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;
.super Landroid/widget/FrameLayout;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedFilterCell"
.end annotation


# instance fields
.field private addButton:Lorg/telegram/ui/Components/ProgressButton;

.field private needDivider:Z

.field private suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 294
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 297
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    :goto_1
    const/16 v8, 0x16

    const/16 v9, 0xa

    const/16 v10, 0x16

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText2"

    .line 307
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v7, 0x5

    goto :goto_3

    :cond_3
    const/4 v7, 0x3

    :goto_3
    const/16 v8, 0x16

    const/16 v9, 0x23

    const/16 v10, 0x16

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v0, Lorg/telegram/ui/Components/ProgressButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ProgressButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    .line 317
    sget p1, Lorg/telegram/messenger/R$string;->Add:I

    const-string v1, "Add"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string v0, "featuredStickers_buttonText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string v0, "featuredStickers_buttonProgress"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProgressButton;->setProgressColor(I)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string v0, "featuredStickers_addButton"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "featuredStickers_addButtonPressed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ProgressButton;->setBackgroundRoundRect(II)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, 0x800035

    const/4 v3, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getSuggestedFilter()Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 351
    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "android.widget.Button"

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 326
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFilter(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Z)V
    .locals 1

    .line 333
    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->needDivider:Z

    .line 334
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    xor-int/lit8 p2, p2, 0x1

    .line 335
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 337
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->description:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
