.class Lorg/telegram/ui/Cells/TextSelectionHelper$5;
.super Landroid/view/ActionMode$Callback2;
.source "TextSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;->createActionCallback()Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 1458
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1461
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickStartView()V

    .line 1464
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 1465
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getLineHeight()I

    move-result p1

    neg-int p1, p1

    .line 1466
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v2, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->offsetToCord(I)[I

    move-result-object p2

    .line 1467
    aget v2, p2, v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v2, v4

    .line 1468
    aget p2, p2, v1

    iget v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr p2, v4

    int-to-float p2, p2

    iget-object v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getY()F

    move-result v3

    add-float/2addr p2, v3

    float-to-int p2, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    const/4 p1, 0x4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p2, p1

    if-ge p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1472
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 1473
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->pickEndView()V

    .line 1474
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v3, :cond_3

    .line 1475
    iget p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->offsetToCord(I)[I

    move-result-object p1

    .line 1476
    aget p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget p2, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr p1, p2

    .line 1479
    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1480
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v1, 0x1

    .line 1478
    invoke-virtual {p3, p2, v1, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$5;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
