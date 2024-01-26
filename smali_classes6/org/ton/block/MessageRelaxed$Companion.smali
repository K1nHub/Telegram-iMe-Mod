.class public final Lorg/ton/block/MessageRelaxed$Companion;
.super Ljava/lang/Object;
.source "MessageRelaxed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MessageRelaxed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/MessageRelaxed$Companion;-><init>()V

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
            "Lorg/ton/block/MessageRelaxed<",
            "TT0;>;>;"
        }
    .end annotation

    const-string v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lorg/ton/block/MessageRelaxed$$serializer;

    invoke-direct {v0, p1}, Lorg/ton/block/MessageRelaxed$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/MessageRelaxed<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lorg/ton/block/MessageRelaxedTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/block/MessageRelaxedTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
