.class Lorg/telegram/ui/Components/ShareAlert$3$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$3;Landroid/view/View;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

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
    .locals 4

    .line 745
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    const/4 v0, 0x0

    .line 746
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4300(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    .line 748
    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$5300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/ImageView;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 749
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$5400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3602(Lorg/telegram/ui/Components/ShareAlert;F)F

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_4

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    sub-float p2, v1, p2

    .line 755
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2802(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    .line 757
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    if-eqz p3, :cond_3

    .line 759
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto/16 :goto_3

    .line 761
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto :goto_3

    .line 763
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3400(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    if-eq p1, v0, :cond_7

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3400(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3500(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2802(Lorg/telegram/ui/Components/ShareAlert;I)I

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move v1, p2

    :goto_2
    if-eqz p3, :cond_6

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3400(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3500(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto :goto_3

    .line 769
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3500(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3400(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 772
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCurrentPanTranslationY(F)V

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onTransitionEnd()V
    .locals 2

    .line 733
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3102(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2702(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 3

    .line 701
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    .line 702
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p2, v0, :cond_0

    .line 703
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2902(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 704
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3002(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 705
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3102(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    .line 706
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2802(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_0

    .line 708
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2902(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 711
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 712
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3402(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 713
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3502(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 714
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3102(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    if-nez p1, :cond_1

    .line 717
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3520(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    goto :goto_1

    .line 719
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3512(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 721
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2900(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    :goto_2
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2802(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_3

    .line 723
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3402(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    .line 725
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
