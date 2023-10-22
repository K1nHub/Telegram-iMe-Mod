.class public interface abstract Lorg/ton/cell/Cell;
.super Ljava/lang/Object;
.source "Cell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/Cell$Companion;,
        Lorg/ton/cell/Cell$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/cell/Cell$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/cell/Cell$Companion;->$$INSTANCE:Lorg/ton/cell/Cell$Companion;

    sput-object v0, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    return-void
.end method


# virtual methods
.method public abstract beginParse()Lorg/ton/cell/CellSlice;
.end method

.method public abstract depth(I)I
.end method

.method public abstract getBits()Lorg/ton/bitstring/BitString;
.end method

.method public abstract getDescriptor()Lorg/ton/cell/CellDescriptor;
.end method

.method public abstract getLevelMask-Kat384U()I
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

.method public abstract getType()Lorg/ton/cell/CellType;
.end method

.method public abstract hash(I)Lorg/ton/bitstring/BitString;
.end method

.method public abstract virtualize(I)Lorg/ton/cell/Cell;
.end method
