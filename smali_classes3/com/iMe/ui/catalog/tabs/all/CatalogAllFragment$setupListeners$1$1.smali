.class final Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogAllFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/catalog/CampaignItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;->invoke(Lcom/iMe/model/catalog/CampaignItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/model/catalog/CampaignItem;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    invoke-static {v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->access$getPresenter(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->onChannelClick(Lcom/iMe/model/catalog/CampaignItem;)V

    return-void
.end method
