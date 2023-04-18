.class public abstract Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;
.super Ljava/lang/Object;
.source "CancelArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;
    }
.end annotation


# instance fields
.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method
