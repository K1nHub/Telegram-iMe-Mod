.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;IJLorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$1:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-wide p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$4:J

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$5:I

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$6:I

    iput-boolean p10, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$1:I

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-wide v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$4:J

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$5:I

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$6:I

    iget-boolean v9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$7:Z

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$inrV6LFJxrxjrgwNyDNt2ao8cPI(Lorg/telegram/messenger/MessagesStorage;IJLorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    return-void
.end method
