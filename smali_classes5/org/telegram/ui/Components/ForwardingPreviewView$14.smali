.class Lorg/telegram/ui/Components/ForwardingPreviewView$14;
.super Ljava/lang/Object;
.source "ForwardingPreviewView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$14;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$14;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->onTransitionAnimationProgress(ZF)V

    return-void
.end method
