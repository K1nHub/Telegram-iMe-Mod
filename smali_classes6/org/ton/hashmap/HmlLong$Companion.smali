.class public final Lorg/ton/hashmap/HmlLong$Companion;
.super Ljava/lang/Object;
.source "HmlLong.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmlLong;
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

    invoke-direct {p0}, Lorg/ton/hashmap/HmlLong$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/hashmap/HmlLong;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lorg/ton/hashmap/HmlLong$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlLong$$serializer;

    return-object v0
.end method

.method public final tlbCodec(I)Lorg/ton/tlb/TlbNegatedConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlLong;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;-><init>(I)V

    return-object v0
.end method
