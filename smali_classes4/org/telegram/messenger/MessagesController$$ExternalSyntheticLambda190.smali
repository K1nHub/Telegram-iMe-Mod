.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$2:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$3:I

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$4:Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$2:J

    iget v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$3:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda190;->f$4:Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$_sQy5q9QuirGtM32AC5NdpcFifM(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    return-void
.end method
