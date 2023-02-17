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
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->VERSION_1:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "airdrop_metadata_"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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
