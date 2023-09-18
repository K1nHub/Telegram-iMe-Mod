.class public final synthetic Lcom/iMe/storage/data/network/api/own/CatalogApi$-CC;
.super Ljava/lang/Object;
.source "CatalogApi.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/network/api/own/CatalogApi;->Endpoints:Lcom/iMe/storage/data/network/api/own/CatalogApi$Endpoints;

    return-void
.end method

.method public static synthetic getAllCampaigns$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 30
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/api/own/CatalogApi;->getAllCampaigns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAllCampaigns"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCampaignsByCategoryId$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 7

    if-nez p8, :cond_1

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 38
    invoke-interface/range {v0 .. v6}, Lcom/iMe/storage/data/network/api/own/CatalogApi;->getCampaignsByCategoryId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCampaignsByCategoryId"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCatalogPreview$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 7

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 21
    invoke-interface/range {v1 .. v6}, Lcom/iMe/storage/data/network/api/own/CatalogApi;->getCatalogPreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCatalogPreview"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
