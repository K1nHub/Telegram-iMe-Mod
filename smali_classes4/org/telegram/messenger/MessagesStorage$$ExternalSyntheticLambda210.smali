.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZJLorg/telegram/tgnet/TLRPC$messages_Messages;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$4:I

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$5:I

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$6:I

    iput-boolean p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$4:I

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$5:I

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$6:I

    iget-boolean v8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda210;->f$7:Z

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$AR9P5S1x7AgRs0q60xBlOG-ph18(Lorg/telegram/messenger/MessagesStorage;ZJLorg/telegram/tgnet/TLRPC$messages_Messages;IIIZ)V

    return-void
.end method
