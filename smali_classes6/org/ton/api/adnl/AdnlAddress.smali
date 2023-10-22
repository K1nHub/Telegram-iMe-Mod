.class public interface abstract Lorg/ton/api/adnl/AdnlAddress;
.super Ljava/lang/Object;
.source "AdnlAddress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlAddress$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Polymorphic;
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/AdnlAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/adnl/AdnlAddress$Companion;->$$INSTANCE:Lorg/ton/api/adnl/AdnlAddress$Companion;

    sput-object v0, Lorg/ton/api/adnl/AdnlAddress;->Companion:Lorg/ton/api/adnl/AdnlAddress$Companion;

    return-void
.end method
