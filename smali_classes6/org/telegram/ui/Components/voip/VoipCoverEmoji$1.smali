.class Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoipCoverEmoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoipCoverEmoji;-><init>(Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 3

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$100(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$002(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I

    .line 71
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$300(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$202(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$102(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$302(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$400(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;->this$0:Lorg/telegram/ui/Components/voip/VoipCoverEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->access$400(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
