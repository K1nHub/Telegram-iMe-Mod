.class Lorg/telegram/ui/Cells/DialogsEmptyCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsEmptyCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->access$000(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->access$000(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->access$100(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->access$102(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method
