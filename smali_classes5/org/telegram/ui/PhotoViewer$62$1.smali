.class Lorg/telegram/ui/PhotoViewer$62$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$62;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$62;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$62;)V
    .locals 0

    .line 13491
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$62$1;->this$1:Lorg/telegram/ui/PhotoViewer$62;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13494
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$62$1;->this$1:Lorg/telegram/ui/PhotoViewer$62;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$27900(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
