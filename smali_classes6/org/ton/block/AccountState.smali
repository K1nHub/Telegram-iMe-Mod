.class public interface abstract Lorg/ton/block/AccountState;
.super Ljava/lang/Object;
.source "AccountState.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountState$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/AccountState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/AccountState$Companion;->$$INSTANCE:Lorg/ton/block/AccountState$Companion;

    sput-object v0, Lorg/ton/block/AccountState;->Companion:Lorg/ton/block/AccountState$Companion;

    return-void
.end method
