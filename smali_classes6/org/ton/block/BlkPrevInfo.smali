.class public interface abstract Lorg/ton/block/BlkPrevInfo;
.super Ljava/lang/Object;
.source "BlkPrevInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlkPrevInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/BlkPrevInfo$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/BlkPrevInfo$Companion;->$$INSTANCE:Lorg/ton/block/BlkPrevInfo$Companion;

    sput-object v0, Lorg/ton/block/BlkPrevInfo;->Companion:Lorg/ton/block/BlkPrevInfo$Companion;

    return-void
.end method
