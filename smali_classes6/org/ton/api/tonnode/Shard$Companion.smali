.class public final Lorg/ton/api/tonnode/Shard$Companion;
.super Ljava/lang/Object;
.source "Shard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/tonnode/Shard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shard.kt\norg/ton/api/tonnode/Shard$Companion\n+ 2 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n51#1,2:61\n52#1:63\n51#1,2:64\n51#1,2:66\n52#1:69\n12#2:60\n1#3:68\n*S KotlinDebug\n*F\n+ 1 Shard.kt\norg/ton/api/tonnode/Shard$Companion\n*L\n33#1:61,2\n34#1:63\n38#1:64,2\n43#1:66,2\n51#1:69\n29#1:60\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/tonnode/Shard$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final containsShard(JJ)Z
    .locals 4

    not-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    and-long/2addr v0, p1

    xor-long/2addr p1, p3

    not-long p3, v0

    add-long/2addr p3, v2

    const/4 v0, 0x1

    shl-long/2addr p3, v0

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final extractShard(Lorg/ton/bitstring/BitString;)J
    .locals 2

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/ton/cell/CellSlice;->Companion:Lorg/ton/cell/CellSlice$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/cell/CellSlice$Companion;->of(Lorg/ton/bitstring/BitString;Ljava/util/List;)Lorg/ton/cell/CellSlice;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method
