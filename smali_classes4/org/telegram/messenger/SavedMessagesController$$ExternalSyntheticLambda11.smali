.class public final synthetic Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SavedMessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-object p3, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/SavedMessagesController;->$r8$lambda$clm7yJzuy9HhdF5gSl5N015z4yE(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    return-void
.end method
