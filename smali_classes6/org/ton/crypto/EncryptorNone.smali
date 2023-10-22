.class public final Lorg/ton/crypto/EncryptorNone;
.super Ljava/lang/Object;
.source "Encryptor.kt"

# interfaces
.implements Lorg/ton/crypto/Encryptor;


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/EncryptorNone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/EncryptorNone;

    invoke-direct {v0}, Lorg/ton/crypto/EncryptorNone;-><init>()V

    sput-object v0, Lorg/ton/crypto/EncryptorNone;->INSTANCE:Lorg/ton/crypto/EncryptorNone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
