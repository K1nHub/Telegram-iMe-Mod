.class Lorg/telegram/ui/Components/SharedMediaLayout$15;
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
.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 2743
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 2746
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 2747
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2748
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 2749
    rem-int/2addr p3, v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p4

    :goto_0
    iput-boolean v2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, p4

    .line 2750
    :goto_1
    iput-boolean v1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    .line 2751
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 2752
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 2753
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2754
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 2756
    :cond_2
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 2757
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 2758
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2759
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void
.end method
