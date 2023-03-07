.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FRM"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$FRM;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 520
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 521
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_frm_logo:I

    .line 523
    sget v4, Lcom/smedialink/storage/R$string;->currency_frm:I

    .line 524
    sget v5, Lcom/smedialink/storage/R$string;->currency_short_frm:I

    .line 527
    sget-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->MWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 528
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    .line 529
    sget v10, Lcom/smedialink/storage/R$string;->currency_frm_site:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v0, p0

    .line 519
    invoke-direct/range {v0 .. v13}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIIILcom/smedialink/storage/domain/utils/crypto/Convert$Unit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
