.class Lorg/telegram/ui/ChatActivity$72;
.super Lorg/telegram/ui/Components/BluredView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkShowBlur(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 12503
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/BluredView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 12506
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12508
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$42100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12509
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$42200(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 12514
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12516
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$42300(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12517
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$72;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$42400(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
