.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualViewHelper"
.end annotation


# instance fields
.field private coords:[I

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Landroid/view/View;)V
    .locals 0

    .line 2163
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 2164
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2167
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 5

    .line 2171
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2174
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 2176
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 2177
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2178
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2179
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 2180
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2181
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    aget v3, v2, v3

    neg-int v3, v3

    int-to-float v3, v3

    aget v1, v2, v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2182
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 2194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 2195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2202
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2203
    sget p1, Lorg/telegram/messenger/R$string;->Send:I

    const-string v0, "Send"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2206
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2207
    sget p1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v0, "Stop"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 2208
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2209
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    .line 2210
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2211
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2212
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v1, v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2213
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2214
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;->coords:[I

    aget v2, v1, v2

    neg-int v2, v2

    aget v0, v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2215
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2217
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
