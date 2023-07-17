.class public abstract Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;
.super Ljava/lang/Object;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;,
        Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;,
        Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
    }
.end annotation


# instance fields
.field private final status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 9
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->value:Ljava/lang/String;

    return-object v0
.end method
