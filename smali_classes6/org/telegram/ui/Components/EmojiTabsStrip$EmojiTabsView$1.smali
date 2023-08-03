.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;
.super Landroid/widget/LinearLayout;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .line 1404
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p5, p3

    const/4 p2, 0x2

    div-int/2addr p5, p2

    const/4 p3, 0x0

    .line 1405
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 1406
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    if-ne p4, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 1411
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, p2

    sub-int v0, p5, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, p2

    add-int/2addr v2, p5

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1412
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p4, v0

    add-int/2addr p1, p4

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1419
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
