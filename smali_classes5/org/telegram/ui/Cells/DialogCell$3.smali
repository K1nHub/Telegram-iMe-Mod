.class Lorg/telegram/ui/Cells/DialogCell$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z
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

    .line 3134
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3137
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->access$202(Lorg/telegram/ui/Cells/DialogCell;F)F

    .line 3138
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->access$302(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 3139
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->access$402(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 3140
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->access$502(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 3141
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method
