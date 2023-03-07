.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda4;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda4;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$wejGYMT2BT6lN7A3F5z5htLZNgg(Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;)V

    return-void
.end method
