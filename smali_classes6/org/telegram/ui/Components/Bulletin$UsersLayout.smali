.class public Lorg/telegram/ui/Components/Bulletin$UsersLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsersLayout"
.end annotation


# instance fields
.field public avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field linearLayout:Landroid/widget/LinearLayout;

.field public subtitleView:Landroid/widget/TextView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 1443
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1445
    new-instance p3, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0xb

    .line 1446
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 1447
    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0x12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 1448
    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x42600000    # 56.0f

    const/high16 v2, 0x42400000    # 48.0f

    const v3, 0x800013

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 1451
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UsersLayout$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout$1;-><init>(Lorg/telegram/ui/Components/Bulletin$UsersLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    .line 1458
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 1459
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v0, p3, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1464
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, -0x40000000    # -2.0f

    const v2, 0x800013

    const/high16 v3, 0x428c0000    # 70.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1466
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 1467
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1468
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    const v2, 0x800013

    const/high16 v3, 0x42980000    # 76.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UsersLayout$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout$2;-><init>(Lorg/telegram/ui/Components/Bulletin$UsersLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    .line 1477
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 1478
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1479
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1480
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1481
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1482
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1484
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    .line 1485
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1487
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1488
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1494
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->setTextColor(I)V

    .line 1495
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onShow()V
    .locals 0

    .line 1513
    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onShow()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
