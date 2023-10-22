.class public abstract Lorg/ton/tlb/AbstractTlbConstructor;
.super Ljava/lang/Object;
.source "TlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/AbstractTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/tlb/AbstractTlbConstructor$Companion;


# instance fields
.field private final id$delegate:Lkotlin/Lazy;

.field private final schema:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/tlb/AbstractTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/tlb/AbstractTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/tlb/AbstractTlbConstructor;->Companion:Lorg/ton/tlb/AbstractTlbConstructor$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "schema"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/tlb/AbstractTlbConstructor;->schema:Ljava/lang/String;

    .line 15
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/tlb/AbstractTlbConstructor$id$2;

    invoke-direct {v0, p2, p0}, Lorg/ton/tlb/AbstractTlbConstructor$id$2;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/tlb/AbstractTlbConstructor;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tlb/AbstractTlbConstructor;->id$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getId()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/tlb/AbstractTlbConstructor;->id$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getSchema()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/tlb/AbstractTlbConstructor;->schema:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/tlb/AbstractTlbConstructor;->schema:Ljava/lang/String;

    return-object v0
.end method
