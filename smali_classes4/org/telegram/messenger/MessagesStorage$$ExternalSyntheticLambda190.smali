.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$6NZVxZmksWNVOkRdFE4ma2j2Gao(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Chat;J)V

    return-void
.end method
