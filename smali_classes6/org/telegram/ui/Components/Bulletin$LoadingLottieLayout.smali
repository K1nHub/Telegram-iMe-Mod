.class public Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;
.super Lorg/telegram/ui/Components/Bulletin$LottieLayout;
.source "Bulletin.java"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$LoadingLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingLottieLayout"
.end annotation


# instance fields
.field public textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 1382
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1384
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p1, 0x1

    .line 1385
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffset(Z)V

    .line 1386
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 1387
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1388
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1389
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1391
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, -0x40000000    # -2.0f

    const v2, 0x800013

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onTextLoaded(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1, v1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1405
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setTextColor(I)V

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
