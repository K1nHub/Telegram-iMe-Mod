.class public interface abstract Lorg/ton/hashmap/HashmapAugNode;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugNode$AhmnFork;,
        Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;,
        Lorg/ton/hashmap/HashmapAugNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAugNode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugNode$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugNode;->Companion:Lorg/ton/hashmap/HashmapAugNode$Companion;

    return-void
.end method
