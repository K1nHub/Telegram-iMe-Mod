.class Lorg/telegram/ui/ProfileActivity$6$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$6;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$6;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 2743
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2744
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2745
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/messenger/TopicsController;->deleteTopics(JLjava/util/ArrayList;)V

    .line 2746
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ProfileActivity;->access$1302(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2747
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2748
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$6700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 2749
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$6800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2750
    instance-of v1, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2751
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2755
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 2757
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2759
    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$1;->this$1:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$6;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->ic_delete:I

    const-string v1, "TopicsDeleted"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 2761
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
