.class public interface abstract Lorg/ton/block/OutMsg;
.super Ljava/lang/Object;
.source "OutMsg.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/OutMsg$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/OutMsg$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/OutMsg$Companion;->$$INSTANCE:Lorg/ton/block/OutMsg$Companion;

    sput-object v0, Lorg/ton/block/OutMsg;->Companion:Lorg/ton/block/OutMsg$Companion;

    return-void
.end method
