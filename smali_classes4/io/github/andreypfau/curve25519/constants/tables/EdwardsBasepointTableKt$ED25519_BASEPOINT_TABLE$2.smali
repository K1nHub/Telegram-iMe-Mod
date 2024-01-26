.class final Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EdwardsBasepointTable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;-><init>()V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;->INSTANCE:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;
    .locals 2

    .line 10
    sget-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->Companion:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/tables/PackedEdwardsBasepointTableKt;->getPACKED_EDWARDS_BASEPOINT_TABLE()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;->unpack([[B)Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt$ED25519_BASEPOINT_TABLE$2;->invoke()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    move-result-object v0

    return-object v0
.end method
