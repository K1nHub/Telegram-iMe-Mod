.class final Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SortingFilterSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->setCurrentArchive(Z)V

    .line 215
    iget-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->access$getListAdapter(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->updateRows()V

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
