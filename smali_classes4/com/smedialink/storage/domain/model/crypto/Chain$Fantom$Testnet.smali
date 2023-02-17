.class public final Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;
.super Lcom/smedialink/storage/domain/model/crypto/Chain;
.source "Chain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Testnet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-wide/16 v0, 0xfa2

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/Chain;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
