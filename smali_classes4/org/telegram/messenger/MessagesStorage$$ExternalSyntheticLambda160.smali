.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda160;->f$2:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$JRiWdR9v9suJCb3fGC2k2g5DxWk(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
