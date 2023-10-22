.class public interface abstract Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;
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
    name = "AhmeEmpty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;,
        Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$DefaultImpls;
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
.field public static final Companion:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;->Companion:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;

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
