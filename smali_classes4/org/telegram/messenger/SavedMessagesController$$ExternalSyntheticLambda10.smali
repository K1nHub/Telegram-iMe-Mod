.class public final synthetic Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SavedMessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-object p3, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/SavedMessagesController;->$r8$lambda$CRWcjeh2UcQtTwHXqwZL5X9WxcM(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method
