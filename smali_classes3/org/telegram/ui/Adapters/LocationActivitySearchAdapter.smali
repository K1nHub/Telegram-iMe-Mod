.class public Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "LocationActivitySearchAdapter.java"


# instance fields
.field private globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 p1, 0x1

    .line 31
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->isSearching()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_1

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 49
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->isSearching()Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/LocationCell;

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1, p2, v3}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 43
    new-instance p1, Lorg/telegram/ui/Cells/LocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 44
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
