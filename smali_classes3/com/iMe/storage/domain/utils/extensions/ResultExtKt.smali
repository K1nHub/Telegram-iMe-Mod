.class public final Lcom/iMe/storage/domain/utils/extensions/ResultExtKt;
.super Ljava/lang/Object;
.source "ResultExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResultExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n8#1,2:25\n18#2:27\n18#2:28\n1726#3,3:29\n1726#3,3:32\n*S KotlinDebug\n*F\n+ 1 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n12#1:25,2\n12#1:27\n18#1:28\n21#1:29,3\n24#1:32,3\n*E\n"
.end annotation


# direct methods
.method public static final isAllSuccess(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "*>;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/Result;

    .line 21
    instance-of v0, v0, Lcom/iMe/storage/domain/model/Result$Success;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
