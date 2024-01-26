.class public final Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;

    invoke-direct {v0, p1, p2}, Lorg/ton/hashmap/AhmnLeafTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
