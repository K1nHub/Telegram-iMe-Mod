.class public final Lorg/ton/crypto/EncryptorFail;
.super Ljava/lang/Object;
.source "Encryptor.kt"

# interfaces
.implements Lorg/ton/crypto/Encryptor;


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/EncryptorFail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/EncryptorFail;

    invoke-direct {v0}, Lorg/ton/crypto/EncryptorFail;-><init>()V

    sput-object v0, Lorg/ton/crypto/EncryptorFail;->INSTANCE:Lorg/ton/crypto/EncryptorFail;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fail encryptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
