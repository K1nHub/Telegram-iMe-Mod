.class Lorg/telegram/ui/TopicsFragment$20;
.super Ljava/lang/Object;
.source "TopicsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$selectedTopics:Ljava/util/HashSet;

.field final synthetic val$topicsToRemove:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$FuRLPeN9Fj779vykcp6etNQKl_Q(Lorg/telegram/ui/TopicsFragment$20;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$20;->lambda$onClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RwJC3A1H1d3LrcuJQXpVR4uoKYM(Lorg/telegram/ui/TopicsFragment$20;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$20;->lambda$onClick$1(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 1756
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->val$selectedTopics:Ljava/util/HashSet;

    iput-object p3, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topicsToRemove:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/TopicsFragment$20;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 3

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1764
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment;->access$2000(Lorg/telegram/ui/TopicsFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$2400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/TopicsController;->deleteTopics(JLjava/util/ArrayList;)V

    .line 1767
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1759
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p2, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    .line 1760
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$selectedTopics:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1761
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/TopicsFragment;->access$2000(Lorg/telegram/ui/TopicsFragment;ZZ)V

    .line 1762
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const-string v1, "TopicsDeleted"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$20;)V

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topicsToRemove:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$20;->val$runnable:Ljava/lang/Runnable;

    new-instance v4, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment$20;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0, v1, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 1768
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1769
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->access$1200(Lorg/telegram/ui/TopicsFragment;)V

    .line 1770
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
