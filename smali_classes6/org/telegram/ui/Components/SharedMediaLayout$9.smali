.class Lorg/telegram/ui/Components/SharedMediaLayout$9;
.super Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V
    .locals 0

    .line 2100
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$9;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .line 2103
    invoke-super {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    .line 2104
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$9;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2105
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$9;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz v0, :cond_3

    .line 2109
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$9;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :cond_3
    return-void
.end method
