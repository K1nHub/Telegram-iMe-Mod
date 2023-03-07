.class Lorg/telegram/ui/FilteredSearchView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilteredSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilteredSearchView$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilteredSearchView$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView$7;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$7$1;->this$1:Lorg/telegram/ui/FilteredSearchView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$7$1;->this$1:Lorg/telegram/ui/FilteredSearchView$7;

    iget p1, p1, Lorg/telegram/ui/FilteredSearchView$7;->val$currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$7$1;->this$1:Lorg/telegram/ui/FilteredSearchView$7;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$7;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->access$1800(Lorg/telegram/ui/FilteredSearchView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method
