.class Lorg/telegram/ui/Components/FilterTabsView$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FilterTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/FilterTabsView$TabMode;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 0

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->canPerformActions()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 3

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1167
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1168
    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4100(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4100(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1172
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1154
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1155
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$3;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
