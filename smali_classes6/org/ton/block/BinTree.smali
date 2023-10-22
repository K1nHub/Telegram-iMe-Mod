.class public interface abstract Lorg/ton/block/BinTree;
.super Ljava/lang/Object;
.source "BinTree.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/ton/tlb/TlbObject;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BinTree$Companion;,
        Lorg/ton/block/BinTree$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TX;>;",
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
.field public static final Companion:Lorg/ton/block/BinTree$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/BinTree$Companion;->$$INSTANCE:Lorg/ton/block/BinTree$Companion;

    sput-object v0, Lorg/ton/block/BinTree;->Companion:Lorg/ton/block/BinTree$Companion;

    return-void
.end method


# virtual methods
.method public abstract nodes()Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "TX;>;"
        }
    .end annotation
.end method
