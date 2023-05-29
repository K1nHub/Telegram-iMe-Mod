.class public Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper;
.source "TextSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleTextSelectionHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Cells/TextSelectionHelper<",
        "Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;",
        ">;"
    }
.end annotation


# instance fields
.field public arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field childCountByPosition:Landroid/util/SparseIntArray;

.field endViewChildPosition:I

.field endViewOffset:I

.field endViewPosition:I

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field maybeTextIndex:I

.field prefixTextByPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field startPeek:Z

.field startViewChildPosition:I

.field startViewOffset:I

.field startViewPosition:I

.field textByPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2128
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;-><init>()V

    const/4 v0, -0x1

    .line 2112
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2113
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2116
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2117
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2120
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    .line 2122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    .line 2123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    .line 2124
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    .line 2133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 2129
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    .line 2130
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsAsPopupAlways:Z

    return-void
.end method

.method private findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I
    .locals 7

    .line 2263
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2264
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v1

    .line 2265
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2266
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2267
    instance-of v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v4, :cond_0

    int-to-float v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    int-to-float p1, p1

    .line 2268
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result p2

    sub-float/2addr v4, p2

    float-to-int p2, v4

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2272
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2273
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p3, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2274
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    return v0

    .line 2280
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const v2, 0x7fffffff

    move v4, v0

    move v3, v2

    :goto_1
    if-ltz p3, :cond_5

    .line 2281
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 2282
    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v6

    .line 2283
    invoke-interface {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    if-lt p2, v6, :cond_3

    if-ge p2, v5, :cond_3

    goto :goto_2

    :cond_3
    sub-int v6, p2, v6

    .line 2289
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v5, v3, :cond_4

    move v4, p3

    move v3, v5

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_5
    move v1, v3

    move p3, v4

    :goto_2
    if-gez p3, :cond_6

    return v0

    .line 2299
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getRow()I

    move-result p2

    if-lez p2, :cond_9

    const/16 v0, 0x18

    .line 2302
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 2307
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_9

    .line 2308
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 2309
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getRow()I

    move-result v3

    if-ne v3, p2, :cond_8

    .line 2310
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v3

    .line 2311
    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v4

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/2addr v4, v1

    if-lt p1, v3, :cond_7

    if-gt p1, v4, :cond_7

    return v0

    :cond_7
    sub-int v1, p1, v3

    .line 2315
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v3, p1, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_8

    move p3, v0

    move v2, v1

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    return p3
.end method

.method private getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I
    .locals 3

    .line 2373
    check-cast p1, Landroid/view/View;

    .line 2374
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2375
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 2376
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2377
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2378
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 2385
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 2386
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1

    .line 2388
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected canSelect(I)Z
    .locals 2

    .line 2792
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v0, v1, :cond_0

    .line 2793
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canSelect(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected canShowActions()Z
    .locals 5

    .line 2813
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2816
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2817
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 2818
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-lt v0, v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-le v0, v4, :cond_2

    :cond_1
    if-lt v2, v3, :cond_3

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v2, v4, :cond_3

    :cond_2
    return v1

    :cond_3
    if-lt v3, v0, :cond_4

    .line 2821
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v0, v2, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public clear(Z)V
    .locals 0

    .line 2639
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    const/4 p1, -0x1

    .line 2640
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2641
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2642
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2643
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2644
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 2645
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 8

    .line 2332
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2333
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2335
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v2

    if-gez v2, :cond_0

    return-void

    .line 2340
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2341
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2343
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    .line 2346
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2347
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    .line 2352
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ne v2, v3, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v2, v6, :cond_5

    .line 2353
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v2, v3, :cond_2

    if-ne v2, p3, :cond_2

    .line 2354
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto/16 :goto_1

    :cond_2
    if-ne p3, v2, :cond_3

    .line 2356
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto/16 :goto_1

    :cond_3
    if-ne p3, v3, :cond_4

    .line 2358
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto/16 :goto_1

    :cond_4
    if-le p3, v2, :cond_b

    if-ge p3, v3, :cond_b

    .line 2360
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto :goto_1

    :cond_5
    if-ne v2, v3, :cond_6

    .line 2362
    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v6, p3, :cond_6

    .line 2363
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto :goto_1

    .line 2364
    :cond_6
    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v2, v6, :cond_7

    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v7, p3, :cond_7

    .line 2365
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    goto :goto_1

    :cond_7
    if-le v2, v3, :cond_8

    if-lt v2, v6, :cond_a

    :cond_8
    if-ne v2, v3, :cond_9

    .line 2366
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-gt p3, v3, :cond_a

    :cond_9
    if-ne v2, v6, :cond_b

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ge p3, v2, :cond_b

    .line 2367
    :cond_a
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/StaticLayout;IIZZ)V

    :cond_b
    :goto_1
    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
    .locals 2

    .line 2200
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_0

    .line 2201
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    :goto_0
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2203
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/StaticLayout;

    return-void

    .line 2206
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_2

    .line 2208
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/StaticLayout;

    goto :goto_2

    .line 2210
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_1
    if-ltz p1, :cond_5

    .line 2211
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_4

    goto :goto_3

    .line 2215
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/StaticLayout;

    :goto_2
    const/4 p1, 0x0

    .line 2217
    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    return-void

    .line 2212
    :cond_5
    :goto_3
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/StaticLayout;

    return-void
.end method

.method protected getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    .line 2162
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 2163
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p5, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p6, :cond_1

    .line 2167
    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    goto :goto_0

    .line 2169
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_2
    iget p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2171
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p3

    const/4 p4, 0x1

    if-gez p1, :cond_3

    move p1, p4

    :cond_3
    if-gez p2, :cond_4

    move p2, p4

    .line 2178
    :cond_4
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result p5

    if-le p1, p5, :cond_5

    .line 2179
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    .line 2181
    :cond_5
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p5

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p5

    if-le p2, p5, :cond_6

    .line 2182
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, p4

    invoke-virtual {p3, p2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p2, p4

    :cond_6
    const/4 p4, 0x0

    .line 2185
    :goto_1
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p5

    if-ge p4, p5, :cond_8

    .line 2186
    invoke-virtual {p3, p4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p5

    if-le p2, p5, :cond_7

    invoke-virtual {p3, p4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p5

    if-ge p2, p5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_8
    move p4, v0

    :goto_2
    if-ltz p4, :cond_9

    int-to-float p1, p1

    .line 2192
    invoke-virtual {p3, p4, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1

    :cond_9
    return v0
.end method

.method protected bridge synthetic getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
    .locals 0

    .line 2110
    check-cast p5, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)I

    move-result p1

    return p1
.end method

.method protected getLineHeight()I
    .locals 5

    .line 2222
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2225
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2227
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_0
    if-ltz v0, :cond_5

    .line 2228
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_2

    .line 2231
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    const v2, 0x7fffffff

    .line 2233
    :goto_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2234
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method protected getSelectedText()Ljava/lang/CharSequence;
    .locals 13

    .line 2650
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2651
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_17

    .line 2652
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    const/16 v5, 0x20

    const/16 v6, 0xa

    if-ne v1, v4, :cond_b

    if-ne v4, v2, :cond_0

    .line 2653
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2654
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    :goto_2
    if-gt v4, v2, :cond_16

    .line 2655
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v8, v4, 0x10

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    goto/16 :goto_4

    .line 2659
    :cond_1
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v10, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v9, v10, :cond_4

    iget v11, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v4, v11, :cond_4

    iget v11, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v4, v11, :cond_4

    .line 2660
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2661
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    if-ge v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v12, v9

    move v9, v8

    move v8, v12

    .line 2667
    :goto_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 2668
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 2669
    :cond_3
    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2670
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_4
    if-ne v9, v10, :cond_7

    .line 2672
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v4, v9, :cond_7

    .line 2673
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_5

    .line 2675
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2677
    :cond_5
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2678
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v8, v9, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2679
    :cond_6
    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2680
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 2681
    :cond_7
    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v4, v9, :cond_8

    .line 2682
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2683
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 2684
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2685
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 2688
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_9

    .line 2690
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2692
    :cond_9
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2693
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_b
    if-ne v1, v2, :cond_14

    move v2, v3

    .line 2697
    :goto_5
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-gt v2, v4, :cond_16

    .line 2698
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v7, v2, 0x10

    add-int/2addr v7, v1

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-nez v4, :cond_c

    goto/16 :goto_6

    .line 2702
    :cond_c
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v8, v9, :cond_e

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v2, v8, :cond_e

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v2, v8, :cond_e

    .line 2703
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2704
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2705
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 2706
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v7, v9, :cond_d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2707
    :cond_d
    invoke-interface {v4, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2708
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 2710
    :cond_e
    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v2, v8, :cond_11

    .line 2711
    iget-object v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_f

    .line 2713
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2715
    :cond_f
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2716
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v7, v8, :cond_10

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2717
    :cond_10
    invoke-interface {v4, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2718
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 2720
    :cond_11
    iget-object v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_12

    .line 2722
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2724
    :cond_12
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2725
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_13
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 2729
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2730
    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    :goto_7
    if-ge v3, v2, :cond_16

    .line 2731
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v7, v3, 0x10

    add-int/2addr v7, v1

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_15

    .line 2733
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2735
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2736
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2741
    :cond_17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 2742
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-class v2, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    .line 2743
    array-length v2, v1

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 2744
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2745
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2746
    invoke-virtual {v0, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2749
    :cond_18
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_0

    .line 2141
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    goto :goto_0

    .line 2143
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2145
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    .line 2148
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 2110
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()V
    .locals 2

    .line 2631
    invoke-super {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    const/4 v0, 0x0

    .line 2632
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2633
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSelectable(Landroid/view/View;)Z
    .locals 2

    .line 2395
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2397
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2398
    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2401
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 2800
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-ne p6, v0, :cond_1

    cmpl-float v0, p5, p4

    if-nez v0, :cond_1

    .line 2801
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz p2, :cond_0

    .line 2802
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_0

    .line 2804
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_0

    .line 2807
    :cond_1
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 2110
    check-cast p6, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method protected onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 5

    .line 2429
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2432
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2434
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->invalidate()V

    .line 2436
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingDirectionSettling:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v1, v4, :cond_4

    if-ne v0, v1, :cond_2

    .line 2438
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ge p3, p1, :cond_1

    .line 2439
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2440
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2441
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2442
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    sub-int/2addr p1, v2

    .line 2443
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto/16 :goto_3

    .line 2445
    :cond_1
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2446
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2447
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2448
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto/16 :goto_3

    :cond_2
    if-ge v0, v1, :cond_3

    .line 2451
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2452
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2453
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2454
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2455
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    sub-int/2addr p1, v2

    .line 2456
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto/16 :goto_3

    .line 2458
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2459
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2460
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2461
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2462
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto/16 :goto_3

    .line 2464
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v1, :cond_9

    if-ne v0, p1, :cond_7

    .line 2466
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-le p3, p1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ge v0, v1, :cond_5

    goto :goto_1

    .line 2472
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2473
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2474
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2475
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2476
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2477
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2478
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    goto/16 :goto_3

    .line 2467
    :cond_6
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2468
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2469
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2470
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto/16 :goto_3

    .line 2480
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-gt v0, p1, :cond_8

    .line 2481
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2482
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2483
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2484
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto :goto_3

    .line 2486
    :cond_8
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2487
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2488
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2489
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2490
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2491
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2492
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    goto :goto_3

    :cond_9
    if-ne v0, p1, :cond_c

    .line 2496
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ge p3, p1, :cond_b

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-le v0, v1, :cond_a

    goto :goto_2

    .line 2502
    :cond_a
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2503
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2504
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2505
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2506
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2507
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2508
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    goto :goto_3

    .line 2497
    :cond_b
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2498
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2499
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2500
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto :goto_3

    .line 2510
    :cond_c
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-lt v0, p1, :cond_d

    .line 2511
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    .line 2512
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2513
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickEndView()V

    .line 2514
    iput v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    goto :goto_3

    .line 2516
    :cond_d
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2517
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2518
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2519
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    .line 2520
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->pickStartView()V

    .line 2521
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 2522
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2527
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2528
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2529
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2530
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_4
    if-ge v3, p1, :cond_e

    .line 2532
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 p3, v3, 0x10

    add-int/2addr p3, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2533
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getPrefix()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method protected onOffsetChanged()V
    .locals 3

    .line 2619
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result v0

    .line 2620
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    .line 2621
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    if-ne v1, v2, :cond_1

    .line 2622
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    .line 2625
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-ne v1, v0, :cond_2

    .line 2626
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    :cond_2
    return-void
.end method

.method protected onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 4

    .line 2409
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getAdapterPosition(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    .line 2414
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    .line 2415
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2419
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2421
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->childCountByPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2423
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->textByPosition:Landroid/util/SparseArray;

    shl-int/lit8 v2, v0, 0x10

    add-int/2addr v2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getLayout()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2424
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->prefixTextByPosition:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getPrefix()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 2110
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method protected pickEndView()V
    .locals 4

    .line 2540
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2543
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    .line 2544
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-ltz v1, :cond_7

    .line 2546
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2547
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    .line 2548
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2549
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 2553
    iput-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void

    .line 2556
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 2557
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    if-eq v2, v3, :cond_4

    .line 2558
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_1

    .line 2559
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-eq v2, v3, :cond_5

    .line 2560
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_1

    .line 2562
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 2565
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 2566
    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2567
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 2568
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 2571
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2573
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    :cond_7
    return-void
.end method

.method protected pickStartView()V
    .locals 4

    .line 2582
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2585
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    .line 2586
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    if-ltz v0, :cond_6

    .line 2588
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2589
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    .line 2590
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 2594
    iput-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void

    .line 2597
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 2598
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewPosition:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewPosition:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    .line 2599
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_1

    .line 2600
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    if-eq v1, v2, :cond_5

    .line 2601
    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    goto :goto_1

    .line 2603
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewOffset:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 2606
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewOffset:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 2609
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2610
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2612
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 2613
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    :cond_6
    return-void
.end method

.method protected selectLayout(II)Z
    .locals 6

    .line 2758
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2761
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v0

    const/4 v2, 0x1

    if-le p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_1

    .line 2780
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startPeek:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->startViewChildPosition:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->endViewChildPosition:I

    :goto_0
    int-to-float p1, p1

    .line 2781
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getY()F

    move-result v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    if-eq p1, v0, :cond_3

    if-ltz p1, :cond_3

    .line 2783
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, v0, p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return v2

    :cond_3
    return v1

    .line 2762
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_7

    .line 2764
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->isSelectable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2765
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    .line 2766
    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v5

    if-le p2, v5, :cond_6

    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v5

    if-ge p2, v5, :cond_6

    int-to-float p1, p1

    .line 2767
    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-interface {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 2769
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-virtual {p0, p2, v4, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->onNewViewSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 2770
    iput-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return v2

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public setMaybeView(IILandroid/view/View;)V
    .locals 1

    .line 2248
    instance-of v0, p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1

    .line 2249
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 2250
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 2251
    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iput-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 2252
    check-cast p3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->findClosestLayoutIndex(IILorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2254
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    goto :goto_0

    .line 2256
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getX()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 2257
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->maybeTextIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;->getY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    :cond_1
    :goto_0
    return-void
.end method

.method public trySelect(Landroid/view/View;)V
    .locals 0

    .line 2242
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz p1, :cond_0

    .line 2243
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
