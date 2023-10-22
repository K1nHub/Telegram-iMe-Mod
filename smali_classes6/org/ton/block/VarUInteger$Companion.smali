.class public final Lorg/ton/block/VarUInteger$Companion;
.super Ljava/lang/Object;
.source "VarUInteger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/VarUInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/VarUInteger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/ton/block/VarUInteger$$serializer;->INSTANCE:Lorg/ton/block/VarUInteger$$serializer;

    return-object v0
.end method

.method public final tlbCodec(I)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;-><init>(I)V

    return-object v0
.end method
