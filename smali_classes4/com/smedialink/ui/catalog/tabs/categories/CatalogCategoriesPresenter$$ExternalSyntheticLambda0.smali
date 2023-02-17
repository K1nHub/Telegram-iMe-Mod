.class public final synthetic Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iget-boolean v1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->$r8$lambda$m6-itaq_tixKbCGIOuvkZWWPe9M(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZLcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
