.class Lorg/telegram/ui/PhotoViewer$36;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$YRMkestz4J1ftxTRSdcsQo7qhjU(Lorg/telegram/ui/PhotoViewer$36;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$36;->lambda$needChangePanelVisibility$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$gsXLKQhpHbPHzRCXLB5_LeVkAVE(Lorg/telegram/ui/PhotoViewer$36;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$36;->lambda$needChangePanelVisibility$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 6778
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$needChangePanelVisibility$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 6816
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 6817
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method private synthetic lambda$needChangePanelVisibility$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 6844
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 6845
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 6846
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x443b8000    # 750.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 6787
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6788
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$20000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x24

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$20000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v7

    if-le v7, v6, :cond_0

    const/16 v6, 0x12

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v5, v6

    .line 6789
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6790
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6791
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6793
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6794
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 6795
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6798
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 6799
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void

    .line 6802
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20500(Lorg/telegram/ui/PhotoViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/16 v2, 0x2710

    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 6804
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6805
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 6806
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$20302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6807
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6808
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6809
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v3, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6810
    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6811
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 6813
    invoke-virtual {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 6814
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 6812
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 6809
    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6815
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PhotoViewer$36$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$36$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$36;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 6820
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto/16 :goto_1

    .line 6822
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6823
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 6826
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6827
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 6828
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6831
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_6

    return-void

    .line 6834
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6835
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$20302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6836
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6837
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6838
    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6839
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 6840
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 6841
    invoke-virtual {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 6842
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 6840
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 6837
    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20402(Lorg/telegram/ui/PhotoViewer;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6843
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PhotoViewer$36$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$36$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$36;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 6849
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20400(Lorg/telegram/ui/PhotoViewer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_1

    .line 6851
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 0

    return-void
.end method

.method public onContextSearch(Z)V
    .locals 0

    return-void
.end method

.method public onItemCountUpdate(II)V
    .locals 0

    return-void
.end method
