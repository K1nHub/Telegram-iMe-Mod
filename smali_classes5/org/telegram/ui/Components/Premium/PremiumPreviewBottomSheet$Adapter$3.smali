.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.source "PremiumPreviewBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastLayout:Landroid/text/Layout;

.field stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field final synthetic val$colorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 436
    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->val$colorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 449
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->lastLayout:Landroid/text/Layout;

    aput-object v4, v2, v3

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->val$colorFilter:Landroid/graphics/ColorFilter;

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 442
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;->lastLayout:Landroid/text/Layout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const p2, 0x5f5e0ff

    const/high16 v0, -0x80000000

    .line 458
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
