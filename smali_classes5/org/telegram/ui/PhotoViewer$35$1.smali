.class Lorg/telegram/ui/PhotoViewer$35$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$35;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$35;


# direct methods
.method public static synthetic $r8$lambda$NSkOq8cFi56Zu-4_WxxIq2Y0p2w(Lorg/telegram/ui/PhotoViewer$35$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$35$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer$35;)V
    .locals 0

    .line 7352
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 7359
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 7360
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7361
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 7363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$20602(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 7369
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 7355
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20500(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 7358
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$35$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$35$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$35$1;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20602(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x35c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
