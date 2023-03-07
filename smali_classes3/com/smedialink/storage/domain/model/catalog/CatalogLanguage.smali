.class public final Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;
.super Ljava/lang/Object;
.source "CatalogLanguage.kt"


# instance fields
.field private final id:J

.field private final nativeTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "nativeTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->id:J

    .line 5
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->nativeTitle:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->id:J

    return-wide v0
.end method

.method public final getNativeTitle()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->nativeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->title:Ljava/lang/String;

    return-object v0
.end method
