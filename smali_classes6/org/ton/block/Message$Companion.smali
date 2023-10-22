.class public final Lorg/ton/block/Message$Companion;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/Message$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAny()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lorg/ton/block/Message;->access$getAny$cp()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method

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
            "Lorg/ton/block/Message<",
            "TT0;>;>;"
        }
    .end annotation

    const-string v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/ton/block/Message$$serializer;

    invoke-direct {v0, p1}, Lorg/ton/block/Message$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

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
            "Lorg/ton/block/Message<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/ton/block/MessageTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/block/MessageTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
