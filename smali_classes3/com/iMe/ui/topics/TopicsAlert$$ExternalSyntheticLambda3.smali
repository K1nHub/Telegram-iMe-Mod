.class public final synthetic Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/ui/topics/TopicsAlert;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/ui/topics/TopicsAlert;

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    check-cast p2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-static {v0, p1, p2}, Lcom/iMe/ui/topics/TopicsAlert;->$r8$lambda$Jq_JSIrOVD8ZHTjDgQaiAOlwV-8(Lcom/iMe/ui/topics/TopicsAlert;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method
