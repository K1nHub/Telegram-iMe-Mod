.class public Lorg/telegram/ui/FiltersSetupActivity$TextCell;
.super Landroid/widget/FrameLayout;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextCell"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 3

    .line 202
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    .line 203
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    .line 206
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    .line 213
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 216
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 217
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x2

    div-int/2addr p5, p1

    .line 239
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p3, 0x40

    const/16 v0, 0x17

    if-eqz p2, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_2

    .line 242
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 244
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 246
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p3, 0x14

    if-nez p2, :cond_3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p4, p2

    .line 247
    :goto_3
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, -0x2

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p2, p1

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x30

    .line 225
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 227
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x5e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 229
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 252
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
