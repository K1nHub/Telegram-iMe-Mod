.class public interface abstract Lorg/ton/block/TrBouncePhase;
.super Ljava/lang/Object;
.source "TrBouncePhase.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrBouncePhase$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/TrBouncePhase$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/TrBouncePhase$Companion;->$$INSTANCE:Lorg/ton/block/TrBouncePhase$Companion;

    sput-object v0, Lorg/ton/block/TrBouncePhase;->Companion:Lorg/ton/block/TrBouncePhase$Companion;

    return-void
.end method
