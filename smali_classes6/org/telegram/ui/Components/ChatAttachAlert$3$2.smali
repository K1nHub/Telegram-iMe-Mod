.class Lorg/telegram/ui/Components/ChatAttachAlert$3$2;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;Landroid/view/View;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 1

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1557
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 2

    .line 1528
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput p1, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    .line 1529
    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    iput p3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    .line 1532
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 1533
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1534
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p2, :cond_1

    .line 1535
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1537
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1538
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1539
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    .line 1541
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCurrentPanTranslationY(F)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    .line 1547
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    :cond_2
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 1511
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    .line 1512
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4002(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionEnd()V

    .line 1516
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eqz v0, :cond_1

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1519
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1520
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 4

    .line 1485
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v3, v3, v1

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 1487
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4202(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    .line 1492
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_1

    .line 1500
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1506
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionStart(ZI)V

    return-void
.end method
