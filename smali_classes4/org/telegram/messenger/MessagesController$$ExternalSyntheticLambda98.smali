.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_chatOnlines;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$TL_chatOnlines;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$2:Lorg/telegram/tgnet/TLRPC$TL_chatOnlines;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda98;->f$2:Lorg/telegram/tgnet/TLRPC$TL_chatOnlines;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$2sgnDyTj-tz8dm2WE_-6pgB1X3w(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$TL_chatOnlines;)V

    return-void
.end method
