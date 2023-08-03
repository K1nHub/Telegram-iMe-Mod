.class public final Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5730
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9100()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 5723
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10300(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddress()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9300(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public clearTypePrefix()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10500(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public clearValidatorDstAddress()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9900(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public clearValidatorSrcAddress()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5817
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9600(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 5893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getAmount()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 5740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 5934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getTypePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorDstAddress()Ljava/lang/String;
    .locals 1

    .line 5838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorDstAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorDstAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorDstAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorSrcAddress()Ljava/lang/String;
    .locals 1

    .line 5789
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorSrcAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorSrcAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorSrcAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 5886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5916
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5917
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10200(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10100(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10100(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5758
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9200(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5778
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5779
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9400(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypePrefix(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5952
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10400(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypePrefixBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10600(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorDstAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5856
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5857
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9800(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorDstAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$10000(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorSrcAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9500(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorSrcAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5827
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5828
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->access$9700(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
