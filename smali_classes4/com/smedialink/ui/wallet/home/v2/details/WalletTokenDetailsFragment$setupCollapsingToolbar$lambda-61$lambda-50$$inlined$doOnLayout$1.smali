.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n1#1,411:1\n70#2:412\n307#2:414\n321#2,2:415\n323#2,2:419\n308#2:421\n307#2:429\n321#2,2:430\n323#2,2:434\n308#2:436\n371#2,2:441\n71#2:445\n636#3:413\n637#3,2:417\n639#3,7:422\n646#3,2:432\n648#3,4:437\n652#3,2:443\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n636#1:414\n636#1:415,2\n636#1:419,2\n636#1:421\n645#1:429\n645#1:430,2\n645#1:434,2\n645#1:436\n651#1:441,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 636
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string p2, "toolbar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget p5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p4, p5

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 640
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 641
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPivotX()F

    move-result p2

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 643
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 644
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, p4

    const/16 p4, 0xa

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p1, p4

    const-string p4, ""

    .line 645
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, p1

    .line 648
    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    const/4 p1, 0x0

    .line 649
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 651
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string p3, "itemBack"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 372
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p2}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x3

    .line 651
    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 652
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$setHeaderMaxTranslationY$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V

    return-void
.end method
