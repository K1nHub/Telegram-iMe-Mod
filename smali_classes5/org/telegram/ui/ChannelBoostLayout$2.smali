.class Lorg/telegram/ui/ChannelBoostLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChannelBoostLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelBoostLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$2;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$2;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-static {p1}, Lorg/telegram/ui/ChannelBoostLayout;->access$800(Lorg/telegram/ui/ChannelBoostLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
