.class Lorg/telegram/ui/Cells/ChatMessageCell$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->setInstantButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 2419
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2423
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$1502(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
