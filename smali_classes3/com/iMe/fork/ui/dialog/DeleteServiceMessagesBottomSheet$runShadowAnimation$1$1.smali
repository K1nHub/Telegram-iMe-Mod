.class public final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->$show:Z

    .line 235
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->$show:Z

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadows(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/view/View;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-void
.end method
