.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesController$SendAsPeersInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;JLorg/telegram/messenger/MessagesController$SendAsPeersInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$1:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$3:Lorg/telegram/messenger/MessagesController$SendAsPeersInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$1:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda192;->f$3:Lorg/telegram/messenger/MessagesController$SendAsPeersInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$b3VHIvvc4LWJXjxUWaqMsr9r_sI(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;JLorg/telegram/messenger/MessagesController$SendAsPeersInfo;)V

    return-void
.end method
