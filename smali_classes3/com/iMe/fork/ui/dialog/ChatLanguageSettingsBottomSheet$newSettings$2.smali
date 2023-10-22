.class final Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;
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
        "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;->$translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 12

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;->$translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->copy$default(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;->invoke()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    return-object v0
.end method
