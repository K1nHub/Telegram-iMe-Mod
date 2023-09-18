.class Lorg/telegram/ui/ContactsActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method public static synthetic $r8$lambda$XrWMTktCk6d8V7x4Rti9MBIEW68(Lorg/telegram/ui/ContactsActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity$2;->lambda$onItemClick$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/contacts/ContactsPresenter;->deleteSelectedContacts()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ContactsActivity;->presenter:Lcom/iMe/ui/contacts/ContactsPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/contacts/ContactsPresenter;->closeActionMode()V

    goto :goto_2

    .line 621
    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$Menu;->CONTACTS_PRIVACY_SETTINGS:I

    if-ne p1, v1, :cond_1

    .line 622
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 623
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->CONTACTS_PRIVACY_SETTINGS:I

    const-string v1, "custom_screen_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 625
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$Menu;->DELETE:I

    if-ne p1, v1, :cond_2

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    new-instance v0, Lorg/telegram/ui/ContactsActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContactsActivity$2;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 631
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSortContactsByName()V

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    invoke-static {p1, v1}, Lorg/telegram/ui/ContactsActivity;->access$402(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$2;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :cond_6
    :goto_2
    return-void
.end method
