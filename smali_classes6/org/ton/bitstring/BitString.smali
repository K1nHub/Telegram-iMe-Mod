.class public interface abstract Lorg/ton/bitstring/BitString;
.super Ljava/lang/Object;
.source "BitString.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/bitstring/BitString$Companion;,
        Lorg/ton/bitstring/BitString$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/ton/bitstring/BitString;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lorg/ton/bitstring/FiftHexBitStringSerializer;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/bitstring/BitString$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/bitstring/BitString$Companion;->$$INSTANCE:Lorg/ton/bitstring/BitString$Companion;

    sput-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    return-void
.end method


# virtual methods
.method public abstract commonPrefixWith(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;
.end method

.method public abstract get(I)Z
.end method

.method public abstract getSize()I
.end method

.method public abstract slice(II)Lorg/ton/bitstring/BitString;
.end method

.method public abstract slice(Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;
.end method

.method public abstract toBinary()Ljava/lang/String;
.end method

.method public abstract toBitString()Lorg/ton/bitstring/BitString;
.end method

.method public abstract toBooleanArray()[Z
.end method

.method public abstract toByteArray(Z)[B
.end method

.method public abstract toHex()Ljava/lang/String;
.end method
