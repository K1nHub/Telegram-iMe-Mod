.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOfferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOfferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2231
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3300()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 2224
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDestination()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1

    .line 2324
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3700(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-object p0
.end method

.method public clearNftokenId()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1

    .line 2270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3500(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V

    return-object p0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNftokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getNftokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2311
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3600(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3800(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNftokenId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2258
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->access$3400(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
