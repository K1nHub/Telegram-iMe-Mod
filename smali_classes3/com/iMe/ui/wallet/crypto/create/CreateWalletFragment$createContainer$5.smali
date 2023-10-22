.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;
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

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    .line 722
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 741
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 742
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object p1

    .line 745
    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 746
    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 742
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 748
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/widget/ScrollView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 724
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 725
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 727
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 728
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 729
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object v3

    .line 732
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 731
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 729
    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 736
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Landroid/widget/ScrollView;->measure(II)V

    .line 737
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
