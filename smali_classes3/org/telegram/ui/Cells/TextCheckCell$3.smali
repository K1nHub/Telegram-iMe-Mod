.class Lorg/telegram/ui/Cells/TextCheckCell$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextCheckCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimatedReverse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextCheckCell;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextCheckCell;I)V
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    iput p2, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->val$color:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->val$color:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->access$202(Lorg/telegram/ui/Cells/TextCheckCell;I)I

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$3;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
