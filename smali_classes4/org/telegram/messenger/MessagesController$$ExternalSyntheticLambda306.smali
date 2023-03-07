.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$2:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$2:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda306;->f$3:Ljava/util/ArrayList;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$guuAmmN4wlHVGVac_N5RADg1pK4(Lorg/telegram/messenger/MessagesController;JILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
