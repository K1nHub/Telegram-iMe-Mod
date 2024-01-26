.class public final Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt;
.super Ljava/lang/Object;
.source "PackedEdwardsBasepointTable.kt"


# static fields
.field private static final PACKED_EDWARDS_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt$PACKED_EDWARDS_BASEPOINT_TABLE$2;->INSTANCE:Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt$PACKED_EDWARDS_BASEPOINT_TABLE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt;->PACKED_EDWARDS_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getPACKED_EDWARDS_BASEPOINT_TABLE()[[B
    .locals 1

    .line 5
    sget-object v0, Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt;->PACKED_EDWARDS_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method
