.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;
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
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n1#1,432:1\n72#2:433\n315#2:435\n329#2,2:436\n331#2,2:440\n316#2:442\n315#2:450\n329#2,2:451\n331#2,2:455\n316#2:457\n379#2,2:462\n73#2:466\n642#3:434\n643#3,2:438\n645#3,7:443\n652#3,2:453\n654#3,4:458\n658#3,2:464\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n642#1:435\n642#1:436,2\n642#1:440,2\n642#1:442\n651#1:450\n651#1:451,2\n651#1:455,2\n651#1:457\n657#1:462,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 642
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string p2, "toolbar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 643
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget p5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p4, p5

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 646
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 647
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPivotX()F

    move-result p2

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 649
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 650
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, p4

    const/16 p4, 0xa

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p1, p4

    const-string p4, "setupCollapsingToolbar$l\u2026da$50$lambda$49$lambda$48"

    .line 651
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, p1

    .line 654
    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    const/4 p1, 0x0

    .line 655
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 657
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string p3, "itemBack"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 380
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

    .line 657
    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 658
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$setHeaderMaxTranslationY$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V

    return-void
.end method
