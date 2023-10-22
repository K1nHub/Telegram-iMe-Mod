.class final Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;
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
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;->this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ScrollView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;->this$0:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->access$initRootView(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;->invoke()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method
