.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->$r8$lambda$9CNOk3eaCVpnxcE8ypyIBsWO2Dg(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method
