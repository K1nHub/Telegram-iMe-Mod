.class final Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogRootPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/CatalogRootPresenter;-><init>(Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/NotificationCenter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/CatalogRootPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;->invoke()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/NotificationCenter;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$notificationCenter$2;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-static {v0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$getTelegramControllersGateway$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getNotificationCenterInstance$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method
