.class Lorg/telegram/ui/ArticleViewer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 1655
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1658
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1659
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 1660
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$4800(Lorg/telegram/ui/ArticleViewer;)[Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    aget-object p1, p1, v1

    iput-object p1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1661
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$2;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt p1, v2, :cond_0

    .line 1663
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$2;->val$index:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1665
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->access$4402(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
