.class public final Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$AssetTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$AssetTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Algorand$AssetTransfer;",
        "Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$AssetTransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 746
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$700()Lwallet/core/jni/proto/Algorand$AssetTransfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Algorand$1;)V
    .locals 0

    .line 739
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1

    .line 854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$1200(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public clearAssetId()Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$1400(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$900(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAssetId()J
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getAssetId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$1100(Lwallet/core/jni/proto/Algorand$AssetTransfer;J)V

    return-object p0
.end method

.method public setAssetId(J)Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$1300(Lwallet/core/jni/proto/Algorand$AssetTransfer;J)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$800(Lwallet/core/jni/proto/Algorand$AssetTransfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->access$1000(Lwallet/core/jni/proto/Algorand$AssetTransfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
