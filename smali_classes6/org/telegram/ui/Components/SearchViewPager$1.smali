.class Lorg/telegram/ui/Components/SearchViewPager$1;
.super Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.source "SearchViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 168
    iput-object v0, v9, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getCurrentItemCount()I

    move-result v0

    .line 172
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchViewPager;->access$000(Lorg/telegram/ui/Components/SearchViewPager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/SearchViewPager;->access$002(Lorg/telegram/ui/Components/SearchViewPager;Z)Z

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    return-void
.end method
