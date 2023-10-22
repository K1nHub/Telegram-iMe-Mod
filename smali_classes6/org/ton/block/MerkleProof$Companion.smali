.class public final Lorg/ton/block/MerkleProof$Companion;
.super Ljava/lang/Object;
.source "MerkleProof.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MerkleProof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/MerkleProof$Companion;-><init>()V

    return-void
.end method

.method public static synthetic virtualize$default(Lorg/ton/block/MerkleProof$Companion;Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/cell/Cell;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MerkleProof$Companion;->virtualize(Lorg/ton/cell/Cell;I)Lorg/ton/cell/Cell;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/MerkleProof<",
            "TT0;>;>;"
        }
    .end annotation

    const-string v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lorg/ton/block/MerkleProof$$serializer;

    invoke-direct {v0, p1}, Lorg/ton/block/MerkleProof$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public final virtualize(Lorg/ton/cell/Cell;I)Lorg/ton/cell/Cell;
    .locals 2

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    sget-object v1, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/cell/Cell;

    invoke-interface {p1, p2}, Lorg/ton/cell/Cell;->virtualize(I)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cell type, expected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", actual: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
