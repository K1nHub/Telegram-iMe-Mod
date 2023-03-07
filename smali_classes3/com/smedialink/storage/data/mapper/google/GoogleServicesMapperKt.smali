.class public final Lcom/smedialink/storage/data/mapper/google/GoogleServicesMapperKt;
.super Ljava/lang/Object;
.source "GoogleServicesMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleServicesMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleServicesMapper.kt\ncom/smedialink/storage/data/mapper/google/GoogleServicesMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1547#2:19\n1618#2,3:20\n*S KotlinDebug\n*F\n+ 1 GoogleServicesMapper.kt\ncom/smedialink/storage/data/mapper/google/GoogleServicesMapperKt\n*L\n11#1:19\n11#1:20,3\n*E\n"
.end annotation


# direct methods
.method private static final scoreToPercent(D)I
    .locals 2

    const/16 v0, 0x64

    int-to-double v0, v0

    mul-double p0, p0, v0

    .line 16
    invoke-static {p0, p1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    return p0
.end method

.method public static final toDomain(Lcom/smedialink/storage/data/network/model/response/google/ImageToTextResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/google/ImageToTextResponse;->getFoundText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toDomain(Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse;->getRecognizedObjects()Ljava/util/List;

    move-result-object p0

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;

    .line 11
    new-instance v2, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->getRecognizedObject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->getScore()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/smedialink/storage/data/mapper/google/GoogleServicesMapperKt;->scoreToPercent(D)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
