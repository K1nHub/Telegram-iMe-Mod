.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZJLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda221;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$KbzfXOvNtIJxXpMs25PR_AkTG_I(Lorg/telegram/messenger/MessagesStorage;ZJLjava/util/ArrayList;)V

    return-void
.end method
