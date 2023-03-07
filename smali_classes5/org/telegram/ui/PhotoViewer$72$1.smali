.class Lorg/telegram/ui/PhotoViewer$72$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$72;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$72;

.field final synthetic val$account:I


# direct methods
.method public static synthetic $r8$lambda$VndrDtlO9UEQK3YzeL_medBQ0N0(Lorg/telegram/ui/PhotoViewer$72$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$72$1;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer$72;I)V
    .locals 0

    .line 14387
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$72$1;->val$account:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .locals 1

    .line 14391
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$72;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$28200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 14392
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$72;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14393
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$72;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14394
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$72;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$28002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 14396
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->this$1:Lorg/telegram/ui/PhotoViewer$72;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$72;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$28300(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 14390
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$72$1;->val$account:I

    new-instance v0, Lorg/telegram/ui/PhotoViewer$72$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$72$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$72$1;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
