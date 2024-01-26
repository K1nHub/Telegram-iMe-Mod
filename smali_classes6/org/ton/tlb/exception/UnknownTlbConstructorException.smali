.class public final Lorg/ton/tlb/exception/UnknownTlbConstructorException;
.super Ljava/lang/IllegalArgumentException;
.source "UnknownTlbConstructorException.kt"


# instance fields
.field private final id:Lorg/ton/bitstring/BitString;


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown constructor"

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/ton/tlb/exception/UnknownTlbConstructorException;->id:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lorg/ton/tlb/exception/UnknownTlbConstructorException;-><init>(Lorg/ton/bitstring/BitString;)V

    return-void
.end method
