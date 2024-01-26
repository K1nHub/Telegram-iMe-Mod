.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;ZLorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iput-boolean p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$uW0GGo8PK5HWmnHbiKEfELRo93g(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;ZLorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
