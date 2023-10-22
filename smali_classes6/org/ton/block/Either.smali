.class public interface abstract Lorg/ton/block/Either;
.super Ljava/lang/Object;
.source "Either.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Either$Companion;,
        Lorg/ton/block/Either$Left;,
        Lorg/ton/block/Either$Right;
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/Either$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/Either$Companion;->$$INSTANCE:Lorg/ton/block/Either$Companion;

    sput-object v0, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    return-void
.end method
