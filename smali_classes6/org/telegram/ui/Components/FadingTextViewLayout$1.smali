.class Lorg/telegram/ui/Components/FadingTextViewLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadingTextViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FadingTextViewLayout;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FadingTextViewLayout;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$200(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$300(Lorg/telegram/ui/Components/FadingTextViewLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$200(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->buildLayer()V

    .line 79
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout$1;->this$0:Lorg/telegram/ui/Components/FadingTextViewLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->buildLayer()V

    :cond_1
    return-void
.end method
