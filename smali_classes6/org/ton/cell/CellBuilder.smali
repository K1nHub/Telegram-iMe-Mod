.class public interface abstract Lorg/ton/cell/CellBuilder;
.super Ljava/lang/Object;
.source "CellBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/CellBuilder$Companion;,
        Lorg/ton/cell/CellBuilder$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/cell/CellBuilder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/cell/CellBuilder$Companion;->$$INSTANCE:Lorg/ton/cell/CellBuilder$Companion;

    sput-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    return-void
.end method


# virtual methods
.method public abstract build()Lorg/ton/cell/Cell;
.end method

.method public abstract endCell()Lorg/ton/cell/Cell;
.end method

.method public abstract getBits()Lorg/ton/bitstring/MutableBitString;
.end method

.method public abstract setExotic(Z)V
.end method

.method public abstract setLevelMask-fuO3_sE(Lorg/ton/cell/LevelMask;)V
.end method

.method public abstract storeBit(Z)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeBytes([B)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeInt(II)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeInt(JI)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeInt(SI)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)",
            "Lorg/ton/cell/CellBuilder;"
        }
    .end annotation
.end method

.method public abstract storeUInt(II)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUInt(JI)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUInt16-xj2QHRw(S)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUIntLeq(II)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUIntLeq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUIntLes(II)Lorg/ton/cell/CellBuilder;
.end method

.method public abstract storeUIntLes(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
.end method
