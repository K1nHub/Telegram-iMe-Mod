.class public final Lorg/ton/hashmap/HmlSame$Companion;
.super Ljava/lang/Object;
.source "HmlSame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmlSame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlSame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HmlSame$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1855#2,2:80\n*S KotlinDebug\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HmlSame$Companion\n*L\n35#1:80,2\n*E\n"
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

    invoke-direct {p0}, Lorg/ton/hashmap/HmlSame$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/hashmap/HmlSame;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/ton/hashmap/HmlSame$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlSame$$serializer;

    return-object v0
.end method

.method public final tlbCodec(I)Lorg/ton/tlb/TlbNegatedConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlSame;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;

    invoke-direct {v0, p1}, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;-><init>(I)V

    return-object v0
.end method
