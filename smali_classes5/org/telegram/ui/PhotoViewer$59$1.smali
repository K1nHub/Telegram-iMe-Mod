.class Lorg/telegram/ui/PhotoViewer$59$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$59;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$59;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$59;)V
    .locals 0

    .line 10254
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 10257
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10258
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10259
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10261
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10263
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10264
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    .line 10265
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 10267
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25900(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    .line 10268
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 10269
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
