.class Lorg/telegram/ui/Components/SharedMediaLayout$13;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 2340
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 2343
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    .line 2344
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2345
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2346
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2347
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result p3

    const/4 p4, 0x2

    if-nez p3, :cond_0

    .line 2348
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2350
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2352
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

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

    goto :goto_2

    .line 2354
    :cond_2
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2355
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2356
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2357
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void
.end method
