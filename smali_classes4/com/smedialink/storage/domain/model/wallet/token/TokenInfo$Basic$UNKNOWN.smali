.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;
.super Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic;
.source "TokenInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UNKNOWN"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic$UNKNOWN;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 35
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 40
    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    .line 34
    invoke-direct/range {v0 .. v10}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Basic;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;IIIILcom/smedialink/storage/domain/model/wallet/token/TokenType;IIII)V

    return-void
.end method
