.class Lorg/telegram/ui/Cells/TextSelectionHelper$1;
.super Ljava/lang/Object;
.source "TextSelectionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$200(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_4

    .line 172
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-nez v1, :cond_0

    const/16 v0, 0x8

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 180
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-nez v2, :cond_2

    .line 181
    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentBottomPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentBottomPadding()I

    move-result v1

    goto :goto_1

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentTopPadding()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getParentTopPadding()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 191
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$300(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    neg-int v0, v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 192
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    nop

    :cond_4
    return-void
.end method
