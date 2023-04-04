.class public final Lcom/iMe/fork/utils/CollectionsUtilsKt;
.super Ljava/lang/Object;
.source "CollectionsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionsUtils.kt\ncom/iMe/fork/utils/CollectionsUtilsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,21:1\n13579#2:22\n13580#2:24\n59#3:23\n*S KotlinDebug\n*F\n+ 1 CollectionsUtils.kt\ncom/iMe/fork/utils/CollectionsUtilsKt\n*L\n8#1:22\n8#1:24\n9#1:23\n*E\n"
.end annotation


# direct methods
.method public static final toArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
