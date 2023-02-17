.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlertDocumentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2013
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;->val$accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method
