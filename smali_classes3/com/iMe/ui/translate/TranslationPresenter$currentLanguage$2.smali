.class final Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslationPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/translate/TranslationPresenter;-><init>(Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
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
.field final synthetic this$0:Lcom/iMe/ui/translate/TranslationPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/translate/TranslationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
