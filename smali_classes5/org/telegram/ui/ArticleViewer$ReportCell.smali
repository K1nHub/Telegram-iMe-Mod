.class Lorg/telegram/ui/ArticleViewer$ReportCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportCell"
.end annotation


# instance fields
.field private hasViews:Z

.field private textView:Landroid/widget/TextView;

.field private viewsTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 11330
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x5a

    .line 11331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11333
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    .line 11334
    sget v1, Lorg/telegram/messenger/R$string;->PreviewFeedback2:I

    const-string v2, "PreviewFeedback2"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11335
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11336
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 11337
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 11338
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/4 v7, -0x1

    const/16 v8, 0x22

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11340
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    .line 11341
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11342
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 11343
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 11344
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/16 v1, 0x22

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$22200(Lorg/telegram/ui/ArticleViewer$ReportCell;)Z
    .locals 0

    .line 11323
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x2c

    .line 11349
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setViews(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 11354
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    .line 11355
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11356
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 11358
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->hasViews:Z

    .line 11359
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11360
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 11361
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    const-string v1, "Views"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11363
    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    .line 11364
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$20000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11365
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->viewsTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$20000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11366
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ReportCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x22

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method
