.class Lorg/telegram/ui/KeepMediaPopupView$1;
.super Lorg/telegram/ui/CacheChatsExceptionsFragment;
.source "KeepMediaPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/KeepMediaPopupView;->lambda$new$1(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/KeepMediaPopupView;Landroid/os/Bundle;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 122
    iput-object p3, p0, Lorg/telegram/ui/KeepMediaPopupView$1;->val$activity:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheChatsExceptionsFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$1;->val$activity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_0
    return-void
.end method
