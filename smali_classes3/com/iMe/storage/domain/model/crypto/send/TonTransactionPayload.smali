.class public abstract Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;
.super Ljava/lang/Object;
.source "TonTransactionPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;,
        Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Raw;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCell()Lorg/ton/cell/Cell;
.end method
