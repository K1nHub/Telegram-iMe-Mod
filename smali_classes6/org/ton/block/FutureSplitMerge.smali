.class public interface abstract Lorg/ton/block/FutureSplitMerge;
.super Ljava/lang/Object;
.source "FutureSplitMerge.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/FutureSplitMerge$Companion;,
        Lorg/ton/block/FutureSplitMerge$FsmMerge;,
        Lorg/ton/block/FutureSplitMerge$FsmNone;,
        Lorg/ton/block/FutureSplitMerge$FsmSplit;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/FutureSplitMerge$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/FutureSplitMerge$Companion;->$$INSTANCE:Lorg/ton/block/FutureSplitMerge$Companion;

    sput-object v0, Lorg/ton/block/FutureSplitMerge;->Companion:Lorg/ton/block/FutureSplitMerge$Companion;

    return-void
.end method
