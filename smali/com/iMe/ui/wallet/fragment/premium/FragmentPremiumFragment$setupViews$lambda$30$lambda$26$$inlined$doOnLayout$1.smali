.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 FragmentPremiumFragment.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment\n*L\n1#1,432:1\n72#2:433\n162#2,8:435\n73#2:444\n350#3:434\n351#3:443\n*S KotlinDebug\n*F\n+ 1 FragmentPremiumFragment.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment\n*L\n350#1:435,8\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_with$1$inlined:Landroid/widget/FrameLayout;

.field final synthetic $this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;->$this_with$1$inlined:Landroid/widget/FrameLayout;

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

    .line 350
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    const-string p2, "nestedRoot"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;->$this_with$inlined:Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    iget-object p3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;->$this_with$1$inlined:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    .line 168
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
