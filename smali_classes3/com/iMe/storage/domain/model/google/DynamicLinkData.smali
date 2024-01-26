.class public abstract Lcom/iMe/storage/domain/model/google/DynamicLinkData;
.super Ljava/lang/Object;
.source "DynamicLinkData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/google/DynamicLinkData$BinancePayment;,
        Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;,
        Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;,
        Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;
    }
.end annotation


# static fields
.field private static final BINANCE_PAYMENT_ID_QUERY_KEY:Ljava/lang/String; = "binance_payment_id"

.field private static final CRYPTOBOX_ID_QUERY_KEY:Ljava/lang/String; = "cryptobox_id"

.field public static final Companion:Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData;->Companion:Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/google/DynamicLinkData;-><init>()V

    return-void
.end method
