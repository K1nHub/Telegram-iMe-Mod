.class public interface abstract Lorg/ton/crypto/digest/Digest;
.super Ljava/lang/Object;
.source "Digest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/crypto/digest/Digest$Companion;,
        Lorg/ton/crypto/digest/Digest$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/crypto/digest/Digest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/crypto/digest/Digest$Companion;->$$INSTANCE:Lorg/ton/crypto/digest/Digest$Companion;

    sput-object v0, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    return-void
.end method


# virtual methods
.method public abstract build()[B
.end method

.method public abstract build([B)[B
.end method

.method public abstract build([BI)[B
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getDigestSize()I
.end method

.method public abstract reset()V
.end method

.method public abstract update([B)V
.end method

.method public abstract update([BII)V
.end method
