.class Lorg/telegram/ui/Cells/TextCheckCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextCheckCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextCheckCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$2;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$2;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->access$200(Lorg/telegram/ui/Cells/TextCheckCell;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$2;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->access$202(Lorg/telegram/ui/Cells/TextCheckCell;I)I

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell$2;->this$0:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
