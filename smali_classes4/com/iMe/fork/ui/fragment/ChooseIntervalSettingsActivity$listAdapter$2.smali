.class final Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChooseIntervalSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
    .locals 2

    .line 35
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;->invoke()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method
