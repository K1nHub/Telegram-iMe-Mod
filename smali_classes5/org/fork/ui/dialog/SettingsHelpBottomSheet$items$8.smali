.class final Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$8;
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

    iput-object p1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$8;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$8;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$items$8;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->TelegramFeaturesUrl:I

    const-string v2, "TelegramFeaturesUrl"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
