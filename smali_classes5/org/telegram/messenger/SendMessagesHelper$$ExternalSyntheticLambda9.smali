.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$3:J

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILorg/telegram/messenger/AccountInstance;JZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/messenger/AccountInstance;

    iput-wide p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$3:J

    iput-boolean p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$4:Z

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$5:I

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/messenger/AccountInstance;

    iget-wide v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$3:J

    iget-boolean v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$4:Z

    iget v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$5:I

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$Wx0wb8ivAjIQDGcstY5z-bG8R5A(Ljava/lang/String;ILorg/telegram/messenger/AccountInstance;JZILjava/lang/String;)V

    return-void
.end method
