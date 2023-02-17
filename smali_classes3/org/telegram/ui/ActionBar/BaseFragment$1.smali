.class Lorg/telegram/ui/ActionBar/BaseFragment$1;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$jQQU119ymTxR_m0DmIgHI9vjOpE(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$1;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Z[Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 924
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 926
    aget-object p2, p4, p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 927
    aget-object p2, p4, p1

    invoke-interface {p2, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 928
    aget-object p2, p4, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 929
    aget-object p2, p4, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {p2, p3, p1, p3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 930
    aget-object p2, p4, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 931
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 932
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 933
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5}, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 933
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 3

    .line 952
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    goto :goto_1

    .line 944
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :goto_1
    return-void
.end method
