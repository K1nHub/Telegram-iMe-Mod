.class public interface abstract Lorg/ton/block/BlockCreateStats;
.super Ljava/lang/Object;
.source "BlockCreateStats.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlockCreateStats$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/BlockCreateStats$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/BlockCreateStats$Companion;->$$INSTANCE:Lorg/ton/block/BlockCreateStats$Companion;

    sput-object v0, Lorg/ton/block/BlockCreateStats;->Companion:Lorg/ton/block/BlockCreateStats$Companion;

    return-void
.end method
