.class public interface abstract Lorg/ton/block/TransactionDescr;
.super Ljava/lang/Object;
.source "TransactionDescr.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TransactionDescr$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/TransactionDescr$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/TransactionDescr$Companion;->$$INSTANCE:Lorg/ton/block/TransactionDescr$Companion;

    sput-object v0, Lorg/ton/block/TransactionDescr;->Companion:Lorg/ton/block/TransactionDescr$Companion;

    return-void
.end method
