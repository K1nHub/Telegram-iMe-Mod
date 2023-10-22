.class public interface abstract Lorg/ton/block/ShardState;
.super Ljava/lang/Object;
.source "ShardState.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardState$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ShardState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/ShardState$Companion;->$$INSTANCE:Lorg/ton/block/ShardState$Companion;

    sput-object v0, Lorg/ton/block/ShardState;->Companion:Lorg/ton/block/ShardState$Companion;

    return-void
.end method
