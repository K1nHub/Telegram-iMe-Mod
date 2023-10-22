.class public interface abstract Lorg/ton/hashmap/HashMapNode;
.super Ljava/lang/Object;
.source "HashMapNode.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashMapNode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashMapNode$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashMapNode$Companion;

    sput-object v0, Lorg/ton/hashmap/HashMapNode;->Companion:Lorg/ton/hashmap/HashMapNode$Companion;

    return-void
.end method
