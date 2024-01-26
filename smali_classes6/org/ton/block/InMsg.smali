.class public interface abstract Lorg/ton/block/InMsg;
.super Ljava/lang/Object;
.source "InMsg.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/InMsg$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/InMsg$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/InMsg$Companion;->$$INSTANCE:Lorg/ton/block/InMsg$Companion;

    sput-object v0, Lorg/ton/block/InMsg;->Companion:Lorg/ton/block/InMsg$Companion;

    return-void
.end method
