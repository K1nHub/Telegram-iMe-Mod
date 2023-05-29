.class Lorg/telegram/ui/Components/ItemOptions$2;
.super Ljava/lang/Object;
.source "ItemOptions.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$dimView:Landroid/view/View;

.field final synthetic val$preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$2;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$dimView:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$container:Landroid/view/ViewGroup;

    iput-object p4, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->access$302(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$2;->val$dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$2$1;-><init>(Lorg/telegram/ui/Components/ItemOptions$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
