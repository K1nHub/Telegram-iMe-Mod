.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->$r8$lambda$nwrQswGY4iMUKJfmXdsxpj8ZNkk(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V

    return-void
.end method
