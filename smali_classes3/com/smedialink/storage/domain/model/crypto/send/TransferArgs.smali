.class public abstract Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;
.super Ljava/lang/Object;
.source "TransferArgs.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;,
        Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;,
        Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;
    }
.end annotation


# instance fields
.field private final amount:D


# direct methods
.method private constructor <init>(D)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;->amount:D

    return-void
.end method

.method public synthetic constructor <init>(DLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;->amount:D

    return-wide v0
.end method
