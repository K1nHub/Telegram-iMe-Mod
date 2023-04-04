.class final Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsToolsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;
    .locals 2

    .line 27
    new-instance v0, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$listAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$listAdapter$2;->invoke()Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method
