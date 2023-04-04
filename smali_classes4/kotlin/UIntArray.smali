.class public final Lkotlin/UIntArray;
.super Ljava/lang/Object;
.source "UIntArray.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Lkotlin/UInt;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1726#2,3:87\n*S KotlinDebug\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n*L\n62#1:87,3\n*E\n"
.end annotation


# direct methods
.method public static constructor-impl(I)[I
    .locals 0

    .line 20
    new-array p0, p0, [I

    invoke-static {p0}, Lkotlin/UIntArray;->constructor-impl([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static constructor-impl([I)[I
    .locals 1

    const-string v0, "storage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final get-pVg5ArA([II)I
    .locals 0

    .line 28
    aget p0, p0, p1

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static getSize-impl([I)I
    .locals 0

    .line 41
    array-length p0, p0

    return p0
.end method

.method public static final set-VXSXFK8([III)V
    .locals 0

    .line 37
    aput p2, p0, p1

    return-void
.end method
