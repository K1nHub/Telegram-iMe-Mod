.class public interface abstract Lorg/ton/block/TrComputePhase;
.super Ljava/lang/Object;
.source "TrComputePhase.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrComputePhase$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/TrComputePhase$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/TrComputePhase$Companion;->$$INSTANCE:Lorg/ton/block/TrComputePhase$Companion;

    sput-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    return-void
.end method
