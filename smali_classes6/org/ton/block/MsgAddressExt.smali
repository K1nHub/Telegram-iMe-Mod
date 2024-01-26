.class public interface abstract Lorg/ton/block/MsgAddressExt;
.super Ljava/lang/Object;
.source "MsgAddressExt.kt"

# interfaces
.implements Lorg/ton/block/MsgAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgAddressExt$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/MsgAddressExt$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/MsgAddressExt$Companion;->$$INSTANCE:Lorg/ton/block/MsgAddressExt$Companion;

    sput-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    return-void
.end method
