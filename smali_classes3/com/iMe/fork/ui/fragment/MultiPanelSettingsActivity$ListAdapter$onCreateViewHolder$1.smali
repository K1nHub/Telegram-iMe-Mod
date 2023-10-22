.class final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiPanelSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/fork/enums/DialogType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

.field final synthetic this$1:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$1:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 540
    check-cast p1, Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->invoke(Lcom/iMe/fork/enums/DialogType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->setCurrentDialogType(Lcom/iMe/fork/enums/DialogType;)V

    .line 538
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$1:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    .line 539
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
