.class public interface abstract Lorg/ton/hashmap/HashMapE;
.super Ljava/lang/Object;
.source "HashMapE.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/ton/tlb/TlbObject;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapE$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/Pair<",
        "+",
        "Lorg/ton/bitstring/BitString;",
        "+TT;>;>;",
        "Lorg/ton/tlb/TlbObject;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashMapE$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashMapE$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashMapE$Companion;

    sput-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    return-void
.end method
