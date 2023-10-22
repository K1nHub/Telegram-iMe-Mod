.class public interface abstract Lorg/ton/hashmap/HashmapAug$AhmEdge;
.super Ljava/lang/Object;
.source "HashmapAug.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAug;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AhmEdge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;,
        Lorg/ton/hashmap/HashmapAug$AhmEdge$DefaultImpls;
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
        "Lorg/ton/hashmap/HashmapAug<",
        "TX;TY;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAug$AhmEdge;->Companion:Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;

    return-void
.end method


# virtual methods
.method public abstract getLabel()Lorg/ton/hashmap/HmLabel;
.end method

.method public abstract getN()I
.end method

.method public abstract getNode()Lorg/ton/hashmap/HashmapAugNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;"
        }
    .end annotation
.end method
