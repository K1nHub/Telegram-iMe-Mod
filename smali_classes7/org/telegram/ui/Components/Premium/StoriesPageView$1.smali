.class Lorg/telegram/ui/Components/Premium/StoriesPageView$1;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StoriesPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/StoriesPageView;->createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;

    .line 142
    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 143
    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    iget v2, v2, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->iconRes:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 128
    new-instance p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 130
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;->this$0:Lorg/telegram/ui/Components/Premium/StoriesPageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;Landroid/content/Context;)V

    .line 134
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
