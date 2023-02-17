.class Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SearchViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    .line 965
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->updateItems()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 2

    .line 1059
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, p3, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p3, p1, p2, v0, v1}, Lorg/telegram/ui/Components/SearchViewPager;->access$800(Lorg/telegram/ui/Components/SearchViewPager;Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1019
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1021
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v2, v1, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchViewPager;->access$702(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    .line 1022
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->access$700(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1029
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->access$700(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->access$700(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    return-object p1

    .line 1032
    :cond_1
    new-instance p1, Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p1, v0}, Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 1035
    iget-object v0, p1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$2;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 2

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    sget p1, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    const-string v0, "SearchAllChatsShort"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1004
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1005
    sget p1, Lorg/telegram/messenger/R$string;->DownloadsTabs:I

    const-string v0, "DownloadsTabs"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1007
    :cond_1
    sget-object v0, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    iget p1, p1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1051
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 1054
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public updateItems()V
    .locals 5

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager;->access$600(Lorg/telegram/ui/Components/SearchViewPager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    .line 980
    iput v2, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 981
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->includeDownloads()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    .line 986
    iput v2, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 987
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    .line 989
    iput v1, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 990
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    const/4 v2, 0x3

    .line 992
    iput v2, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 993
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V

    const/4 v1, 0x4

    .line 995
    iput v1, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 996
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
