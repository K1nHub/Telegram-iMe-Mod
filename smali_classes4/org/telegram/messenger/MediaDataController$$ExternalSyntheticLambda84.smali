.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage$TopicKey;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda84;->f$1:Lorg/telegram/messenger/MessagesStorage$TopicKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda84;->f$1:Lorg/telegram/messenger/MessagesStorage$TopicKey;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$4l4G_ddAl2m3XA8k4QZMo2KaSMc(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    return-void
.end method
