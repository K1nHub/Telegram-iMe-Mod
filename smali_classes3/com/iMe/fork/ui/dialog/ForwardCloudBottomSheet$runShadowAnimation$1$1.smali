.class public final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->$show:Z

    .line 163
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->$show:Z

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadow(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
