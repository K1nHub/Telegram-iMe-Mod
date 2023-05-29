.class public final synthetic Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ResultCallback;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ResultCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iput-wide p2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iget-wide v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;->f$1:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/EmojiThemes;->$r8$lambda$qftbg4aRFN10GJMc33Cvr1U0df8(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
