.class public final Lorg/ton/hashmap/HmlShort$Companion;
.super Ljava/lang/Object;
.source "HmlShort.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmlShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/hashmap/HmlShort$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/hashmap/HmlShort;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/ton/hashmap/HmlShort$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlShort$$serializer;

    return-object v0
.end method

.method public final tlbCodec()Lorg/ton/tlb/TlbNegatedConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlShort;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;->INSTANCE:Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;

    return-object v0
.end method
