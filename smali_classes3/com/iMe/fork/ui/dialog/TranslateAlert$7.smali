.class Lcom/iMe/fork/ui/dialog/TranslateAlert$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

.field final synthetic val$T:F

.field final synthetic val$setAfter:Z


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V
    .locals 0

    .line 1345
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->val$T:F

    iput-boolean p3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->val$setAfter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1365
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->val$T:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 1366
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissInternal()V

    goto :goto_0

    .line 1367
    :cond_0
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->val$setAfter:Z

    if-eqz p1, :cond_1

    .line 1368
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2000(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1369
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 1370
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    .line 1371
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->val$T:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2300(Lcom/iMe/fork/ui/dialog/TranslateAlert;F)V

    .line 1373
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$2402(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1352
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1353
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1354
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1355
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1802(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z

    :cond_0
    return-void
.end method
