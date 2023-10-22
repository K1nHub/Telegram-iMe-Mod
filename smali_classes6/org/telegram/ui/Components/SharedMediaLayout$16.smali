.class Lorg/telegram/ui/Components/SharedMediaLayout$16;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 2765
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 2768
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    .line 2769
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2770
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2771
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2772
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result p3

    const/4 p4, 0x2

    if-nez p3, :cond_0

    .line 2773
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2775
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2777
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_1
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 2778
    :cond_2
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p3, :cond_5

    .line 2779
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2780
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 2781
    rem-int/2addr p3, p4

    const/4 v0, 0x1

    if-nez p3, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    iput-boolean v2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    .line 2782
    :goto_3
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    .line 2783
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2784
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2785
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2786
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 2788
    :cond_5
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2789
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2790
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2791
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_4
    return-void
.end method
