.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/utils/Callbacks$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda71;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda71;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    check-cast p2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$UVuiedrnlIRaiN4i4nAnyRK6qNs(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method
