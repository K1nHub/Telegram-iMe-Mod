.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOfferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOfferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2583
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->access$4000()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 2576
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSellOffer()Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;
    .locals 1

    .line 2622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->access$4200(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;)V

    return-object p0
.end method

.method public getSellOffer()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->getSellOffer()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setSellOffer(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2609
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2610
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;->access$4100(Lwallet/core/jni/proto/Ripple$OperationNFTokenAcceptOffer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
