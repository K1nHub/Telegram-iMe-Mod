.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;IZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$2:Z

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$3:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$2:Z

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$3:J

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda71;->f$4:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$J4LQPgSc8jL2r6dgkTflPRKAyRU(Lorg/telegram/messenger/MessagesStorage;IZJI)V

    return-void
.end method
