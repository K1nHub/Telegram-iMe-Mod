.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$1:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$1:I

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$Px57fGkNyy9kUQEKW6vDhaJ1hbE(Lorg/telegram/messenger/MessagesStorage;IJ)V

    return-void
.end method
