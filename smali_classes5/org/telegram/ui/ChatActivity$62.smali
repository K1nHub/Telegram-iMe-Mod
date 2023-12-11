.class Lorg/telegram/ui/ChatActivity$62;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateInfoTopView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 10781
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 10784
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$30502(Lorg/telegram/ui/ChatActivity;F)F

    .line 10785
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
