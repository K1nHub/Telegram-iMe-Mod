.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$InputChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$2:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$3:J

    iput-object p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$4:Lorg/telegram/tgnet/TLRPC$InputChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$2:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$3:J

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda86;->f$4:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$bFp8IqHJxkkrWj8ZQWVjaMjxyOI(Lorg/telegram/messenger/MessagesStorage;JIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    return-void
.end method
