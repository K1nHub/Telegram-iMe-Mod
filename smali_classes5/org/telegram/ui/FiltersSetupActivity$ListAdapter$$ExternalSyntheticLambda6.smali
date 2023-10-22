.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field public final synthetic f$2:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$2:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iput-boolean p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$2:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-boolean v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$brsiXtjrqz5WJPnKOqPlReJ0kl4(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V

    return-void
.end method
