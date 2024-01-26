.class public final Lorg/ton/crypto/DecryptorNone;
.super Ljava/lang/Object;
.source "Decryptor.kt"

# interfaces
.implements Lorg/ton/crypto/Decryptor;


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/DecryptorNone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/DecryptorNone;

    invoke-direct {v0}, Lorg/ton/crypto/DecryptorNone;-><init>()V

    sput-object v0, Lorg/ton/crypto/DecryptorNone;->INSTANCE:Lorg/ton/crypto/DecryptorNone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
