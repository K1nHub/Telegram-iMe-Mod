.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;IZLjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$2:I

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$4:Ljava/util/ArrayList;

    iput p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$5:I

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$2:I

    iget-boolean v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$3:Z

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$4:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$5:I

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda49;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$TmBCET23v4woQKD8RMXOqjTJWRA(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;IZLjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
