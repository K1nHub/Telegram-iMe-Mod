.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda51;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$PCLNcLXLxSDg7QwKSrpPUAGQmHw(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    return-void
.end method
