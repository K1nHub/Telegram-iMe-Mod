.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesStorage$IntCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJLorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$3:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;->f$3:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$c3CH9nOtnGHZ4Zd0sv6F3C4J_Ag(Lorg/telegram/messenger/MessagesStorage;JJLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    return-void
.end method
