.class Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoEditToolCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditToolCell$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;->this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;->this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$1;

    iget-object v0, v0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;->this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$102(Lorg/telegram/ui/Cells/PhotoEditToolCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
