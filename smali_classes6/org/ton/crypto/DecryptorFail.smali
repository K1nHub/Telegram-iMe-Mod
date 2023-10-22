.class public final Lorg/ton/crypto/DecryptorFail;
.super Ljava/lang/Object;
.source "Decryptor.kt"

# interfaces
.implements Lorg/ton/crypto/Decryptor;


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/DecryptorFail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/DecryptorFail;

    invoke-direct {v0}, Lorg/ton/crypto/DecryptorFail;-><init>()V

    sput-object v0, Lorg/ton/crypto/DecryptorFail;->INSTANCE:Lorg/ton/crypto/DecryptorFail;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
