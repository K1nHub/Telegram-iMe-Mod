.class final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogCategoriesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCategoriesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,213:1\n56#2,6:214\n*S KotlinDebug\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2\n*L\n31#1:214,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;->$chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2$1;

    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;->$chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-direct {v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2$1;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;->invoke()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object v0

    return-object v0
.end method
