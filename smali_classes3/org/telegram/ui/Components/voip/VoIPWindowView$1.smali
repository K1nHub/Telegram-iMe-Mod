.class Lorg/telegram/ui/Components/voip/VoIPWindowView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

.field final synthetic val$account:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPWindowView;I)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->val$account:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 144
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->val$account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->access$000(Lorg/telegram/ui/Components/voip/VoIPWindowView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->access$100(Lorg/telegram/ui/Components/voip/VoIPWindowView;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
