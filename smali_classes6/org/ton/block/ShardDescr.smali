.class public interface abstract Lorg/ton/block/ShardDescr;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardDescr$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ShardDescr$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/ShardDescr$Companion;->$$INSTANCE:Lorg/ton/block/ShardDescr$Companion;

    sput-object v0, Lorg/ton/block/ShardDescr;->Companion:Lorg/ton/block/ShardDescr$Companion;

    return-void
.end method
