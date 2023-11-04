.class Lorg/telegram/ui/Components/MediaActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$7;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$7;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$2000(Lorg/telegram/ui/Components/MediaActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1143
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$7;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$2100(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
