.class public final Lcom/iMe/storage/data/mapper/catalog/CursorMetaMappingKt;
.super Ljava/lang/Object;
.source "CursorMetaMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;)Lcom/iMe/storage/domain/model/catalog/CursorMeta;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CursorMeta;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;->getNextCursor()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/model/catalog/CursorMeta;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
