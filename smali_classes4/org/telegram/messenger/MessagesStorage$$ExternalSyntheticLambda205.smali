.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$2:J

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$3:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$2:J

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$3:I

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda205;->f$4:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$DKjeROHBGV0ZcI6_Z3eMil8P128(Lorg/telegram/messenger/MessagesStorage;ZJII)V

    return-void
.end method
