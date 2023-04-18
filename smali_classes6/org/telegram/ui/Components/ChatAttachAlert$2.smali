.class Lorg/telegram/ui/Components/ChatAttachAlert$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)Ljava/lang/Float;
    .locals 0

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 630
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$2;->get(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 630
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$2;->setValue(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;F)V
    .locals 4

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    .line 634
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const p1, 0x3f333333    # 0.7f

    cmpl-float v1, p2, p1

    if-lez v1, :cond_3

    sub-float v1, v0, p2

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    .line 649
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 650
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    sub-float v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 654
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 661
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 662
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v3

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v3

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v3

    if-ne v2, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    .line 664
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 665
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    div-float/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    goto :goto_4

    .line 638
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v1, :cond_a

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    neg-int v2, p1

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    sub-float/2addr v0, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_4

    .line 643
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    int-to-float v2, p1

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    neg-int p1, p1

    int-to-float p1, p1

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 668
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
