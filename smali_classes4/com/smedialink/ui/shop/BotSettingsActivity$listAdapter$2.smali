.class final Lcom/smedialink/ui/shop/BotSettingsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BotSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/BotSettingsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/BotSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$listAdapter$2;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;
    .locals 2

    .line 33
    new-instance v0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$listAdapter$2;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;-><init>(Lcom/smedialink/ui/shop/BotSettingsActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/ui/shop/BotSettingsActivity$listAdapter$2;->invoke()Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method
