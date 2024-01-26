.class public interface abstract Lorg/ton/block/MsgAddressInt;
.super Ljava/lang/Object;
.source "MsgAddressInt.kt"

# interfaces
.implements Lorg/ton/block/MsgAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgAddressInt$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/MsgAddressInt$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/MsgAddressInt$Companion;->$$INSTANCE:Lorg/ton/block/MsgAddressInt$Companion;

    sput-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    return-void
.end method
