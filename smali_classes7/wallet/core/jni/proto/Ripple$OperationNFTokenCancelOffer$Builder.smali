.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOfferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOfferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2944
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->access$4400()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 2937
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTokenOffers(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;"
        }
    .end annotation

    .line 3027
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->access$4700(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTokenOffers(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3012
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3013
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->access$4600(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearTokenOffers()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1

    .line 3040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3041
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->access$4800(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V

    return-object p0
.end method

.method public getTokenOffers(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->getTokenOffers(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTokenOffersCount()I
    .locals 1

    .line 2972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->getTokenOffersCount()I

    move-result v0

    return v0
.end method

.method public getTokenOffersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 2959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    .line 2960
    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->getTokenOffersList()Ljava/util/List;

    move-result-object v0

    .line 2959
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTokenOffers(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2998
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->access$4500(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method
