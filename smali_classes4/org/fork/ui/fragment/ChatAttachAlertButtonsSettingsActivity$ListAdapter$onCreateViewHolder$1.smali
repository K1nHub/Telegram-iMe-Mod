.class final Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAttachAlertButtonsSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/fork/enums/DialogType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

.field final synthetic this$1:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    iput-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$1:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    check-cast p1, Lorg/fork/enums/DialogType;

    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->invoke(Lorg/fork/enums/DialogType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->setCurrentDialogType(Lorg/fork/enums/DialogType;)V

    .line 218
    iget-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$1:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->updateRows()V

    .line 219
    iget-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getListAdapter(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
