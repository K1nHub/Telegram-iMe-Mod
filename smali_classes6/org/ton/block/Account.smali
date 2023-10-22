.class public interface abstract Lorg/ton/block/Account;
.super Ljava/lang/Object;
.source "Account.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Account$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/Account$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/Account$Companion;->$$INSTANCE:Lorg/ton/block/Account$Companion;

    sput-object v0, Lorg/ton/block/Account;->Companion:Lorg/ton/block/Account$Companion;

    return-void
.end method
