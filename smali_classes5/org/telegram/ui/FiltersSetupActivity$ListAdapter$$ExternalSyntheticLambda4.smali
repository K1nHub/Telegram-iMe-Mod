.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iput-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$14iPo-E1XKgLxf1KdyLVQyit-nc(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
