.class public interface abstract Lorg/ton/hashmap/HmLabel;
.super Ljava/lang/Object;
.source "HmLabel.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmLabel$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HmLabel$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HmLabel$Companion;->$$INSTANCE:Lorg/ton/hashmap/HmLabel$Companion;

    sput-object v0, Lorg/ton/hashmap/HmLabel;->Companion:Lorg/ton/hashmap/HmLabel$Companion;

    return-void
.end method


# virtual methods
.method public abstract toBitString()Lorg/ton/bitstring/BitString;
.end method
