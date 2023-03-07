.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/lang/Object;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-wide p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/messenger/MessageObject;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-boolean p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$5:Z

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$6:I

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$7:Ljava/lang/Object;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$8:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$9:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-boolean v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$5:Z

    iget v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$6:I

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$8:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda44;->f$9:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$4vOuJQJNkRkEQ06vq_chUzwK168(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Ljava/lang/String;)V

    return-void
.end method
