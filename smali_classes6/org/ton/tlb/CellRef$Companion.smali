.class public final Lorg/ton/tlb/CellRef$Companion;
.super Ljava/lang/Object;
.source "CellRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/CellRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/tlb/CellRef$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/tlb/CellRef$Companion;

    invoke-direct {v0}, Lorg/ton/tlb/CellRef$Companion;-><init>()V

    sput-object v0, Lorg/ton/tlb/CellRef$Companion;->$$INSTANCE:Lorg/ton/tlb/CellRef$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/ton/tlb/CellRefTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/tlb/CellRefTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method

.method public final valueOf(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/tlb/CellRef<",
            "TT;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/ton/tlb/CellRefValue;

    invoke-direct {v0, p1, p2}, Lorg/ton/tlb/CellRefValue;-><init>(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method

.method public final valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/cell/Cell;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/tlb/CellRef<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/ton/tlb/CellRefImpl;

    invoke-direct {v0, p1, p2}, Lorg/ton/tlb/CellRefImpl;-><init>(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
