.class Lorg/telegram/messenger/NotificationCenter$1;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$1;->val$delegate:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 752
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$1;->val$delegate:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 757
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$1;->val$delegate:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
