.class final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiPanelSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 2

    .line 38
    new-instance v0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;->invoke()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method
