.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpoilerEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 215
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$302(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 228
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$402(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method
