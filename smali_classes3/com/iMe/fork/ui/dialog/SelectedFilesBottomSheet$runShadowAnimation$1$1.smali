.class public final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->$show:Z

    .line 248
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->$show:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getTopShadow(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
