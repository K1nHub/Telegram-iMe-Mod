.class final Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatLanguageSettingsBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;-><init>(Lorg/telegram/ui/ChatActivity;Ljava/util/List;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;
    .locals 2

    .line 43
    new-instance v0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;->invoke()Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;

    move-result-object v0

    return-object v0
.end method
