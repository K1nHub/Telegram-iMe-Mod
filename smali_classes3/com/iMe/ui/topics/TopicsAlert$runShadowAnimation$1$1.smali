.class public final Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsAlert;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    iput-boolean p2, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->$show:Z

    .line 286
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$setShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 289
    iget-boolean p1, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->$show:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {p1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getTopShadow(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {p1, v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$setShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
