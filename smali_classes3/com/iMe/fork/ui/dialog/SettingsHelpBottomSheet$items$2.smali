.class final Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsHelpBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;->this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;->this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://t.me/ime_ai"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
