.class public final Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;
.super Ljava/lang/Object;
.source "EdwardsBasepointTable.kt"


# static fields
.field private static final ED25519_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;->INSTANCE:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;->ED25519_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getED25519_BASEPOINT_TABLE()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;
    .locals 1

    .line 9
    sget-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;->ED25519_BASEPOINT_TABLE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    return-object v0
.end method
