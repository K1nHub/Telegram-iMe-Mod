.class Lorg/telegram/ui/PhotoViewer$73;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 15866
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 15869
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$16102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 15870
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15871
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 15872
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15873
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 15874
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 15875
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    :cond_0
    if-eqz p1, :cond_1

    .line 15879
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$28800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15881
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15882
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$28802(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method
