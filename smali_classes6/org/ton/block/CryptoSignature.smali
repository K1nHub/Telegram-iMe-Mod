.class public interface abstract Lorg/ton/block/CryptoSignature;
.super Ljava/lang/Object;
.source "CryptoSignature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CryptoSignature$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/CryptoSignature$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/CryptoSignature$Companion;->$$INSTANCE:Lorg/ton/block/CryptoSignature$Companion;

    sput-object v0, Lorg/ton/block/CryptoSignature;->Companion:Lorg/ton/block/CryptoSignature$Companion;

    return-void
.end method
