.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;
.super Landroid/view/ViewGroup;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createContainer()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    .line 526
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 617
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p4, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    sub-int p1, p4, p2

    sub-int p2, p5, p3

    const/4 p3, 0x2

    if-le p4, p5, :cond_0

    .line 621
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p2, p4

    div-int/2addr p4, p3

    .line 622
    iget-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    .line 625
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 626
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p4

    .line 622
    invoke-virtual {p5, v1, p4, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    int-to-float p1, p1

    const p4, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p1

    float-to-int p5, p4

    int-to-float p2, p2

    const v0, 0x3e6147ae    # 0.22f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 630
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p5

    .line 634
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 630
    invoke-virtual {v1, p5, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    const v0, 0x3ec7ae14    # 0.39f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 638
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 641
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p5

    .line 642
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 638
    invoke-virtual {v1, p5, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    .line 645
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    int-to-float p3, p3

    div-float/2addr p1, p3

    add-float/2addr p4, p1

    float-to-int p1, p4

    const p3, 0x3f23d70a    # 0.64f

    mul-float/2addr p3, p2

    float-to-int p3, p3

    .line 647
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object p4

    .line 650
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    .line 651
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    .line 647
    invoke-virtual {p4, p1, p3, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    const p1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 655
    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p2

    .line 658
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p5

    .line 659
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p1

    .line 655
    invoke-virtual {p2, p5, p1, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0

    :cond_0
    int-to-float p2, p2

    const p4, 0x3e178d50    # 0.148f

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 663
    iget-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    .line 666
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 667
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p4

    .line 663
    invoke-virtual {p5, v1, p4, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    const p4, 0x3eea7efa    # 0.458f

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 670
    iget-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p5

    .line 673
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 674
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p4

    .line 670
    invoke-virtual {p5, v1, p4, v0, v2}, Landroid/widget/TextView;->layout(IIII)V

    const p4, 0x3f051eb8    # 0.52f

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 677
    iget-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p5

    .line 680
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 681
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p4

    .line 677
    invoke-virtual {p5, v1, p4, v0, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 683
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/2addr p1, p3

    const p3, 0x3f4a7efa    # 0.791f

    mul-float/2addr p3, p2

    float-to-int p3, p3

    .line 685
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object p4

    .line 688
    iget-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    .line 689
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    .line 685
    invoke-virtual {p4, p1, p3, p5, v0}, Landroid/widget/TextView;->layout(IIII)V

    const p1, 0x3f64dd2f    # 0.894f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 692
    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p2

    .line 695
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 696
    iget-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p1

    .line 692
    invoke-virtual {p2, v1, p1, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 528
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 529
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 531
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 530
    invoke-virtual {v1, v3, p2}, Landroid/widget/FrameLayout;->measure(II)V

    const/16 p2, 0x2a

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    if-le p1, v0, :cond_0

    .line 535
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    int-to-float v5, p1

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 536
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    int-to-float v7, v0

    const v8, 0x3f2e147b    # 0.68f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 540
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 535
    invoke-virtual {v4, v6, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 545
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 546
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 549
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 545
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 551
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    .line 552
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 555
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 551
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 557
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    .line 558
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 561
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 557
    invoke-virtual {v4, v6, v3}, Landroid/widget/TextView;->measure(II)V

    .line 563
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    .line 564
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 569
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 568
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 563
    invoke-virtual {v3, v1, p2}, Landroid/widget/TextView;->measure(II)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    .line 575
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    int-to-float v6, v0

    const v7, 0x3ecc49ba    # 0.399f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 579
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 574
    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 584
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    .line 585
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 588
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 584
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 590
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    .line 591
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 594
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 590
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 596
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;

    move-result-object v4

    .line 597
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 600
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 596
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->measure(II)V

    .line 602
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    .line 603
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 608
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 607
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 602
    invoke-virtual {v3, v1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 613
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
