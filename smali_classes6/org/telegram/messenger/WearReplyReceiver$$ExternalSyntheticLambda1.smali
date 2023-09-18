.class public final synthetic Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/WearReplyReceiver;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/WearReplyReceiver;

    iput-object p2, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-wide p3, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iput p6, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$4:I

    iput p7, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/WearReplyReceiver;

    iget-object v1, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-wide v2, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iget v5, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$4:I

    iget v6, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;->f$5:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/WearReplyReceiver;->$r8$lambda$zFw5yr68Zd9pJ5Vd5e3YVljuxN8(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;II)V

    return-void
.end method
