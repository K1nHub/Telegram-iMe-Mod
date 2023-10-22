.class public interface abstract Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AhmnLeaf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;,
        Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$DefaultImpls;
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
        "Lorg/ton/hashmap/HashmapAugNode<",
        "TX;TY;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;->Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;

    return-void
.end method


# virtual methods
.method public abstract getExtra()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation
.end method
