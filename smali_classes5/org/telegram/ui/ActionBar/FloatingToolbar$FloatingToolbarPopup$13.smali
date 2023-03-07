.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method public static synthetic $r8$lambda$d2okwc43m_XJUsyF7JZ4eggIbaA(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1063
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1056
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$1900(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1058
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$1500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
