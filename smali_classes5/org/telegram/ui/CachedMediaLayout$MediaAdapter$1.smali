.class Lorg/telegram/ui/CachedMediaLayout$MediaAdapter$1;
.super Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;
.source "CachedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V
    .locals 0

    .line 664
    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V

    return-void
.end method


# virtual methods
.method public onCheckBoxPressed()V
    .locals 4

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 668
    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;

    iget-object v1, v1, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/CachedMediaLayout;->delegate:Lorg/telegram/ui/CachedMediaLayout$Delegate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/telegram/ui/CachedMediaLayout$Delegate;->onItemSelected(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    return-void
.end method
