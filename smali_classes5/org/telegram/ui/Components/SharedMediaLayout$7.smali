.class Lorg/telegram/ui/Components/SharedMediaLayout$7;
.super Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$7;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .line 1823
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1824
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$7;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1825
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$7;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
