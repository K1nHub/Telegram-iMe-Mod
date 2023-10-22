.class public interface abstract Lorg/ton/cell/CellSlice;
.super Ljava/lang/Object;
.source "CellSlice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/CellSlice$Companion;,
        Lorg/ton/cell/CellSlice$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/cell/CellSlice$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/cell/CellSlice$Companion;->$$INSTANCE:Lorg/ton/cell/CellSlice$Companion;

    sput-object v0, Lorg/ton/cell/CellSlice;->Companion:Lorg/ton/cell/CellSlice$Companion;

    return-void
.end method


# virtual methods
.method public abstract getBits()Lorg/ton/bitstring/BitString;
.end method

.method public abstract getBitsPosition()I
.end method

.method public abstract getRefs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefsPosition()I
.end method

.method public abstract loadBit()Z
.end method

.method public abstract loadBits(I)Lorg/ton/bitstring/BitString;
.end method

.method public abstract loadInt(I)Ljava/math/BigInteger;
.end method

.method public abstract loadRef()Lorg/ton/cell/Cell;
.end method

.method public abstract loadRefs(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTinyInt(I)J
.end method

.method public abstract loadUInt(I)Ljava/math/BigInteger;
.end method

.method public abstract loadUInt16-Mh2AYeg()S
.end method

.method public abstract loadUInt32-pVg5ArA()I
.end method

.method public abstract loadUInt64-s-VKNKU()J
.end method

.method public abstract loadUIntLeq(I)Ljava/math/BigInteger;
.end method

.method public abstract loadUIntLes(I)Ljava/math/BigInteger;
.end method

.method public abstract preloadBits(I)Lorg/ton/bitstring/BitString;
.end method

.method public abstract preloadInt(I)Ljava/math/BigInteger;
.end method

.method public abstract skipBits(I)Lorg/ton/cell/CellSlice;
.end method
