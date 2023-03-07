.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$1:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$2:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$1:I

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$2:J

    iget v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda281;->f$3:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$mYrZ2XCZkT9kruAzVvy4c7DcFT8(Lorg/telegram/messenger/MessagesController;IJILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
