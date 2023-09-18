.class Lorg/telegram/ui/Components/SearchCounterView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchCounterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchCounterView;->setCount(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchCounterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchCounterView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    const/4 v0, -0x1

    iput v0, p1, Lorg/telegram/ui/Components/SearchCounterView;->animationType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchCounterView;->access$002(Lorg/telegram/ui/Components/SearchCounterView;F)F

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchCounterView;->access$102(Lorg/telegram/ui/Components/SearchCounterView;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchCounterView;->access$202(Lorg/telegram/ui/Components/SearchCounterView;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchCounterView;->access$302(Lorg/telegram/ui/Components/SearchCounterView;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchCounterView$1;->this$0:Lorg/telegram/ui/Components/SearchCounterView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
