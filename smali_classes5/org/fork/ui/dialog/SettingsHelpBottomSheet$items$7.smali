.class final Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsHelpBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SettingsHelpBottomSheet;-><init>(Lorg/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
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
.field final synthetic this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$getFragment$p(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$getFragment$p(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$7;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v2}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$getFragment$p(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createSupportAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
