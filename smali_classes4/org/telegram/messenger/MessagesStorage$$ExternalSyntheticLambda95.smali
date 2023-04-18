.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJLjava/lang/Integer;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$3:Ljava/lang/Integer;

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$4:I

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$5:I

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$3:Ljava/lang/Integer;

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$4:I

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$5:I

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda95;->f$6:I

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$uRsehm0F-0Bd1Lujh0QF78lUh1k(Lorg/telegram/messenger/MessagesStorage;JJLjava/lang/Integer;III)V

    return-void
.end method
