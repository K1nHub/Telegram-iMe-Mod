.class Lorg/telegram/ui/LaunchActivity$18;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/TermsOfServiceView$TermsOfServiceViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showTosActivity(ILorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public static synthetic $r8$lambda$5oodfKt7S8DgQTdFjvfh8hPq5vk(Lorg/telegram/ui/LaunchActivity$18;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity$18;->lambda$onAcceptTerms$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 2218
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$18;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAcceptTerms$0()V
    .locals 2

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$18;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/TermsOfServiceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAcceptTerms(I)V
    .locals 2

    .line 2221
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 2222
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2223
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$18;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2224
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$2100()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2225
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$2100()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$2100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2227
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$18;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$2200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/TermsOfServiceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2228
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 2229
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2230
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LaunchActivity$18$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$18;)V

    .line 2231
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2232
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
