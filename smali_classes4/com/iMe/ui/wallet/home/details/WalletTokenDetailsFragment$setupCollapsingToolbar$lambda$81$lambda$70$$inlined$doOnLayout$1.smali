.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment\n*L\n1#1,432:1\n72#2:433\n315#2:435\n329#2,2:436\n331#2,2:440\n316#2:442\n315#2:452\n329#2,2:453\n331#2,2:457\n316#2:459\n379#2,2:464\n73#2:468\n1029#3:434\n1030#3,2:438\n1032#3,9:443\n1041#3,2:455\n1043#3,4:460\n1047#3,2:466\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment\n*L\n1029#1:435\n1029#1:436,2\n1029#1:440,2\n1029#1:442\n1040#1:452\n1040#1:453,2\n1040#1:457,2\n1040#1:459\n1046#1:464,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1029
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string/jumbo p2, "toolbar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string/jumbo p3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1030
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget p5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p4, p5

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 1033
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1034
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPivotX()F

    move-result p2

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1036
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 1037
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 1038
    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, p4

    const/16 p4, 0xa

    .line 1039
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p1, p4

    const-string/jumbo p4, "setupCollapsingToolbar$l\u2026da$70$lambda$69$lambda$68"

    .line 1040
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1041
    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, p1

    .line 1043
    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    const/4 p1, 0x0

    .line 1044
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1046
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$collapsedTranslationX$inlined:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo p3, "itemBack"

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

    .line 1046
    iget-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    iget-object p3, p3, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1047
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$updateHeaderMaxTranslation(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    return-void
.end method
