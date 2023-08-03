.class Lorg/telegram/ui/ActionBar/BaseFragment$1;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$params:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;


# direct methods
.method public static synthetic $r8$lambda$8AYJgXDoEUw7INWZZYMGIKaQRSw(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment$1;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)V
    .locals 0

    .line 1047
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$params:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 1049
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    const/4 p1, 0x0

    .line 1050
    aget-object p2, p5, p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 1051
    aget-object p2, p5, p1

    invoke-interface {p2, p6}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1052
    aget-object p2, p5, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 1053
    aget-object p2, p5, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {p2, p3, p1, p3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1054
    aget-object p2, p5, p1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1055
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 1056
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p6, p7}, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1057
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1058
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    if-eqz p1, :cond_0

    .line 1059
    iget-object p0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onDismiss:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 1060
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
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

    .line 1087
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$params:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onPreFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1089
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1092
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1078
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

    .line 1081
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$actionBarLayout:[Lorg/telegram/ui/ActionBar/INavigationLayout;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    goto :goto_1

    .line 1079
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1067
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 1068
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1;->val$params:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onOpenAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1099
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
