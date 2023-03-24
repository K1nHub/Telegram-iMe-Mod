.class public final Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Balance$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Balance$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Balance$Transfer;",
        "Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Balance$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 764
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$600()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 757
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearToAddress()Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$800(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$1100(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-object p0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$700(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$900(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->access$1000(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
