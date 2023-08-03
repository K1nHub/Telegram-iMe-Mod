.class Lorg/telegram/ui/Cells/DialogCell$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 4662
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 4665
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/DialogCell;->access$700(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogCell;->access$800(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogCell;->access$900(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr p1, v0

    .line 4666
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogCell;->access$1000(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 4667
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogCell;->access$1000(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Cells/DialogCell;->access$1100(Lorg/telegram/ui/Cells/DialogCell;II)V

    goto :goto_2

    .line 4669
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v1}, Lorg/telegram/ui/Cells/DialogCell;->access$1202(Lorg/telegram/ui/Cells/DialogCell;Z)Z

    .line 4670
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/DialogCell;->access$1000(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->access$1302(Lorg/telegram/ui/Cells/DialogCell;I)I

    .line 4672
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$5;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method
