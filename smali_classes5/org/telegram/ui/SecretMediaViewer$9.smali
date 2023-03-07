.class Lorg/telegram/ui/SecretMediaViewer$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    .line 1613
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$9;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$9;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1702(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$9;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->access$1400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
