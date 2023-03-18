.class public final Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;
.super Ljava/lang/Object;
.source "CryptoPreferenceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;

.field private static final KEY_AIRDROP_METADATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;->$$INSTANCE:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airdrop_metadata_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->VERSION_1:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;->KEY_AIRDROP_METADATA:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_AIRDROP_METADATA()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;->KEY_AIRDROP_METADATA:Ljava/lang/String;

    return-object v0
.end method
