.class Lorg/ton/cell/CellSliceImpl;
.super Ljava/lang/Object;
.source "CellSlice.kt"

# interfaces
.implements Lorg/ton/cell/CellSlice;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellSlice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellSlice.kt\norg/ton/cell/CellSliceImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,326:1\n1#2:327\n1855#3,2:328\n*S KotlinDebug\n*F\n+ 1 CellSlice.kt\norg/ton/cell/CellSliceImpl\n*L\n173#1:328,2\n*E\n"
.end annotation


# instance fields
.field private final bits:Lorg/ton/bitstring/BitString;

.field private bitsPosition:I

.field private final refs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private refsPosition:I


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Ljava/util/List<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/ton/cell/CellSliceImpl;->bits:Lorg/ton/bitstring/BitString;

    .line 93
    iput-object p2, p0, Lorg/ton/cell/CellSliceImpl;->refs:Ljava/util/List;

    .line 94
    iput p3, p0, Lorg/ton/cell/CellSliceImpl;->bitsPosition:I

    .line 95
    iput p4, p0, Lorg/ton/cell/CellSliceImpl;->refsPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 91
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/cell/CellSliceImpl;-><init>(Lorg/ton/bitstring/BitString;Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method protected final checkBitsOverflow(I)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bits overflow. Can\'t load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits left."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final checkRefsOverflow()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefsPosition()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refs overflow. Can\'t load ref. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " refs left."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/ton/cell/CellSliceImpl;->bits:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public getBitsPosition()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/ton/cell/CellSliceImpl;->bitsPosition:I

    return v0
.end method

.method public getRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/ton/cell/CellSliceImpl;->refs:Ljava/util/List;

    return-object v0
.end method

.method public getRefsPosition()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/ton/cell/CellSliceImpl;->refsPosition:I

    return v0
.end method

.method public loadBit()Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->preloadBit()Z

    move-result v0

    .line 120
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return v0
.end method

.method public loadBits(I)Lorg/ton/bitstring/BitString;
    .locals 2

    .line 135
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return-object v0
.end method

.method public loadInt(I)Ljava/math/BigInteger;
    .locals 2

    .line 146
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return-object v0
.end method

.method public loadRef()Lorg/ton/cell/Cell;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->checkRefsOverflow()V

    .line 102
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->preloadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefsPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/ton/cell/CellSliceImpl;->setRefsPosition(I)V

    return-object v0
.end method

.method public loadRefs(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadTinyInt(I)J
    .locals 3

    .line 152
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadTinyInt(I)J

    move-result-wide v0

    .line 153
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return-wide v0
.end method

.method public loadUInt(I)Ljava/math/BigInteger;
    .locals 2

    .line 164
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return-object v0
.end method

.method public loadUInt16-Mh2AYeg()S
    .locals 1

    .line 91
    invoke-static {p0}, Lorg/ton/cell/CellSlice$DefaultImpls;->loadUInt16-Mh2AYeg(Lorg/ton/cell/CellSlice;)S

    move-result v0

    return v0
.end method

.method public loadUInt32-pVg5ArA()I
    .locals 1

    .line 91
    invoke-static {p0}, Lorg/ton/cell/CellSlice$DefaultImpls;->loadUInt32-pVg5ArA(Lorg/ton/cell/CellSlice;)I

    move-result v0

    return v0
.end method

.method public loadUInt64-s-VKNKU()J
    .locals 2

    .line 91
    invoke-static {p0}, Lorg/ton/cell/CellSlice$DefaultImpls;->loadUInt64-s-VKNKU(Lorg/ton/cell/CellSlice;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadUIntLeq(I)Ljava/math/BigInteger;
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lorg/ton/cell/CellSlice$DefaultImpls;->loadUIntLeq(Lorg/ton/cell/CellSlice;I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public loadUIntLes(I)Ljava/math/BigInteger;
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lorg/ton/cell/CellSlice$DefaultImpls;->loadUIntLes(Lorg/ton/cell/CellSlice;I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public preloadBit()Z
    .locals 2

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v0
    :try_end_0
    .catch Lorg/ton/bitstring/exception/BitStringUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lorg/ton/cell/exception/CellUnderflowException;

    invoke-direct {v1, v0}, Lorg/ton/cell/exception/CellUnderflowException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public preloadBits(I)Lorg/ton/bitstring/BitString;
    .locals 3

    .line 141
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->checkBitsOverflow(I)V

    .line 142
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/ton/bitstring/BitString;->slice(Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public preloadInt(I)Ljava/math/BigInteger;
    .locals 3

    .line 158
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-static {v1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Lorg/ton/bigint/BigIntJvmKt;->shl(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/ton/bigint/BigIntJvmKt;->times(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/ton/bigint/BigIntJvmKt;->minus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public preloadRef()Lorg/ton/cell/Cell;
    .locals 2

    .line 109
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefsPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public preloadTinyInt(I)J
    .locals 2

    .line 91
    invoke-static {p0, p1}, Lorg/ton/cell/CellSlice$DefaultImpls;->preloadTinyInt(Lorg/ton/cell/CellSlice;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public preloadUInt(I)Ljava/math/BigInteger;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 170
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setBitsPosition(I)V
    .locals 0

    .line 94
    iput p1, p0, Lorg/ton/cell/CellSliceImpl;->bitsPosition:I

    return-void
.end method

.method public setRefsPosition(I)V
    .locals 0

    .line 95
    iput p1, p0, Lorg/ton/cell/CellSliceImpl;->refsPosition:I

    return-void
.end method

.method public skipBits(I)Lorg/ton/cell/CellSlice;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/ton/cell/CellSliceImpl;->setBitsPosition(I)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
