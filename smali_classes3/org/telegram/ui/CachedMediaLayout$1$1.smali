.class Lorg/telegram/ui/CachedMediaLayout$1$1;
.super Ljava/lang/Object;
.source "CachedMediaLayout.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CachedMediaLayout$1;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CachedMediaLayout$1;

.field final synthetic val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CachedMediaLayout$1;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iput-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;

    .line 155
    iget-object v1, v0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    .line 157
    instance-of v1, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object v1, v1, Lorg/telegram/ui/CachedMediaLayout$1;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    check-cast v0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;

    iget-object v2, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-static {v1, p2, v0, v2, p1}, Lorg/telegram/ui/CachedMediaLayout;->access$600(Lorg/telegram/ui/CachedMediaLayout;Lorg/telegram/ui/CachedMediaLayout$ItemInner;Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout$1;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout;->delegate:Lorg/telegram/ui/CachedMediaLayout$Delegate;

    if-eqz p1, :cond_1

    .line 164
    iget-object v0, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-object p2, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lorg/telegram/ui/CachedMediaLayout$Delegate;->onItemSelected(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    :cond_1
    return-void
.end method
