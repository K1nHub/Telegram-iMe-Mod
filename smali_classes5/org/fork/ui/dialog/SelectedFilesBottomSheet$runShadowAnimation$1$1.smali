.class public final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $show:Z

.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    iput-boolean p2, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->$show:Z

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
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-boolean p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->$show:Z

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getTopShadow(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 254
    :cond_0
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$setShadowAnimation$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
