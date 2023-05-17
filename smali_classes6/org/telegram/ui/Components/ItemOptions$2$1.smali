.class Lorg/telegram/ui/Components/ItemOptions$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions$2;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ItemOptions$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions$2;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2$1;->this$1:Lorg/telegram/ui/Components/ItemOptions$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2$1;->this$1:Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/ItemOptions$2;->val$dimView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2$1;->this$1:Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v0, p1, Lorg/telegram/ui/Components/ItemOptions$2;->val$container:Landroid/view/ViewGroup;

    iget-object p1, p1, Lorg/telegram/ui/Components/ItemOptions$2;->val$dimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 346
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2$1;->this$1:Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object p1, p1, Lorg/telegram/ui/Components/ItemOptions$2;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2$1;->this$1:Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ItemOptions$2;->val$preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
