.class Lcom/iMe/fork/ui/dialog/TranslateAlert$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Ljava/lang/Runnable;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 572
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$002(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 565
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$002(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z

    .line 566
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 567
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
