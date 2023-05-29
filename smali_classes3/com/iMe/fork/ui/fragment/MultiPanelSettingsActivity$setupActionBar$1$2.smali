.class public final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->RESET:I

    if-ne p1, v0, :cond_1

    .line 135
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->resetConfig()V

    .line 136
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$readSettings(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    .line 137
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    .line 138
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
