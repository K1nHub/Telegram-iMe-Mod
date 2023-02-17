.class public Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PaintTypefaceListView.java"


# instance fields
.field private mask:Landroid/graphics/Path;

.field private maskProvider:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->mask:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 26
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 p1, 0x8

    .line 54
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, v0, v1, v0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->maskProvider:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->mask:Landroid/graphics/Path;

    invoke-interface {v0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->mask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->maskProvider:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 59
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x6

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int p2, p2, v0

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public setMaskProvider(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->maskProvider:Landroidx/core/util/Consumer;

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
