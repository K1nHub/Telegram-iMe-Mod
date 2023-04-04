.class public final Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;
.super Ljava/lang/Object;
.source "NftAvatarResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NftCollectionResponse"
.end annotation


# instance fields
.field private final contractAddress:Ljava/lang/String;

.field private final id:J

.field private final status:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final transactionHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionHash"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->id:J

    .line 15
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->title:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->contractAddress:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->transactionHash:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->id:J

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionHash()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->transactionHash:Ljava/lang/String;

    return-object v0
.end method
