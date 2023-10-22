.class public interface abstract Lorg/ton/tlb/CellRef;
.super Ljava/lang/Object;
.source "CellRef.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/CellRef$Companion;,
        Lorg/ton/tlb/CellRef$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/tlb/CellRef$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/tlb/CellRef$Companion;->$$INSTANCE:Lorg/ton/tlb/CellRef$Companion;

    sput-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    return-void
.end method


# virtual methods
.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hash()Lorg/ton/bitstring/BitString;
.end method

.method public abstract hash(Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/bitstring/BitString;"
        }
    .end annotation
.end method

.method public abstract toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation
.end method
