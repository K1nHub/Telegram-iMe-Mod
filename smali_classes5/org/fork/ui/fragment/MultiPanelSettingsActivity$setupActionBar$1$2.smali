.class public final Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/MultiPanelController;->resetConfig()V

    .line 138
    iget-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$readSettings(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    .line 139
    iget-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getListAdapter(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method
