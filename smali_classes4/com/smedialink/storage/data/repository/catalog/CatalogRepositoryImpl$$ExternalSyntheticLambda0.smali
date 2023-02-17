.class public final synthetic Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->$r8$lambda$8jUvRKr1jXMnbnJvM5Y7xZe6otA(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
