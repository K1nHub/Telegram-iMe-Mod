.class Lorg/telegram/ui/Components/StorageDiagramView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StorageDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StorageDiagramView;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StorageDiagramView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StorageDiagramView;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$2;->this$0:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 567
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView$2;->this$0:Lorg/telegram/ui/Components/StorageDiagramView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
