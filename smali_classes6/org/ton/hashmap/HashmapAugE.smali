.class public interface abstract Lorg/ton/hashmap/HashmapAugE;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;,
        Lorg/ton/hashmap/HashmapAugE$AhmeRoot;,
        Lorg/ton/hashmap/HashmapAugE$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAugE$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugE$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugE$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    return-void
.end method


# virtual methods
.method public abstract get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            ")",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation
.end method
