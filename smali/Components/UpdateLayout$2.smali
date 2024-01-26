.class LComponents/UpdateLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LComponents/UpdateLayout;->updateAppUpdateViews(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LComponents/UpdateLayout;


# direct methods
.method constructor <init>(LComponents/UpdateLayout;)V
    .locals 0

    .line 337
    iput-object p1, p0, LComponents/UpdateLayout$2;->this$0:LComponents/UpdateLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 340
    iget-object p1, p0, LComponents/UpdateLayout$2;->this$0:LComponents/UpdateLayout;

    invoke-static {p1}, LComponents/UpdateLayout;->access$100(LComponents/UpdateLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 341
    iget-object p1, p0, LComponents/UpdateLayout$2;->this$0:LComponents/UpdateLayout;

    invoke-static {p1}, LComponents/UpdateLayout;->access$100(LComponents/UpdateLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
