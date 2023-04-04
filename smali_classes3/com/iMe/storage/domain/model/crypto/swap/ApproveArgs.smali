.class public abstract Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;
.super Ljava/lang/Object;
.source "ApproveArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;
    }
.end annotation


# instance fields
.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

.field private final value:Ljava/lang/Number;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Ljava/lang/Number;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    .line 11
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->value:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Ljava/lang/Number;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->value:Ljava/lang/Number;

    return-object v0
.end method
