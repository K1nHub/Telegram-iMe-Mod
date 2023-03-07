.class final Lcom/smedialink/ui/translate/TranslationPresenter$currentLanguage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslationPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/translate/TranslationPresenter;-><init>(Lcom/smedialink/model/translation/TranslationArgs;Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/translate/TranslationPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/translate/TranslationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$currentLanguage$2;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/ui/translate/TranslationPresenter$currentLanguage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$currentLanguage$2;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getTelegramGateway$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getCurrentLocaleInformation()Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;->getSupportedLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
