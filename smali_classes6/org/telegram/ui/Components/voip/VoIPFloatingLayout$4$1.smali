.class Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4$1;->this$1:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4$1;->this$1:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->access$302(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Z)Z

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4$1;->this$1:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
