.class public final Lorg/ton/block/MerkleUpdate$Companion;
.super Ljava/lang/Object;
.source "MerkleUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MerkleUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerkleUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdate$Companion\n+ 2 TlbConstructor.kt\norg/ton/tlb/TlbConstructorKt\n*L\n1#1,78:1\n82#2:79\n*S KotlinDebug\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdate$Companion\n*L\n42#1:79\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/MerkleUpdate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/MerkleUpdate<",
            "TT0;>;>;"
        }
    .end annotation

    const-string v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/ton/block/MerkleUpdate$$serializer;

    invoke-direct {v0, p1}, Lorg/ton/block/MerkleUpdate$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/MerkleUpdate<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/ton/block/MerkleUpdateTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/block/MerkleUpdateTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    .line 82
    const-class p1, Lorg/ton/block/MerkleUpdate;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;

    move-result-object p1

    return-object p1
.end method
