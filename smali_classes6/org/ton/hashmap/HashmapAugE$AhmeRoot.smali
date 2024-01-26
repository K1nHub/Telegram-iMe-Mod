.class public interface abstract Lorg/ton/hashmap/HashmapAugE$AhmeRoot;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AhmeRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;,
        Lorg/ton/hashmap/HashmapAugE$AhmeRoot$DefaultImpls;
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
        "Lorg/ton/hashmap/HashmapAugE<",
        "TX;TY;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->Companion:Lorg/ton/hashmap/HashmapAugE$AhmeRoot$Companion;

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

.method public abstract getN()I
.end method

.method public abstract getRoot()Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end method
