.class Lorg/telegram/ui/PhotoViewer$56$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$56;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$56;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$56;)V
    .locals 0

    .line 10750
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 10753
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10754
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25900(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10755
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10757
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10759
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10760
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    .line 10761
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 10763
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$26000(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    .line 10764
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 10765
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10766
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56$1;->this$1:Lorg/telegram/ui/PhotoViewer$56;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$26100(Lorg/telegram/ui/PhotoViewer;)V

    :cond_5
    return-void
.end method
