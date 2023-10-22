.class public interface abstract Lorg/ton/block/IntermediateAddress;
.super Ljava/lang/Object;
.source "IntermediateAddress.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/IntermediateAddress$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/IntermediateAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/IntermediateAddress$Companion;->$$INSTANCE:Lorg/ton/block/IntermediateAddress$Companion;

    sput-object v0, Lorg/ton/block/IntermediateAddress;->Companion:Lorg/ton/block/IntermediateAddress$Companion;

    return-void
.end method
