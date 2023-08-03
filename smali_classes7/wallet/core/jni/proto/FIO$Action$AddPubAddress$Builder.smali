.class public final Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddress;",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2744
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$3800()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 2737
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPublicAddresses(Ljava/lang/Iterable;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
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
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;)",
            "Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;"
        }
    .end annotation

    .line 2938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4500(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    .line 2926
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/FIO$PublicAddress;

    .line 2925
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4400(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public addPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
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

    .line 2898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4400(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public addPublicAddresses(Lwallet/core/jni/proto/FIO$PublicAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4300(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Lwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public addPublicAddresses(Lwallet/core/jni/proto/FIO$PublicAddress;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4300(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Lwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public clearFee()Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1

    .line 3002
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4900(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public clearFioAddress()Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1

    .line 2797
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4000(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public clearPublicAddresses()Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1

    .line 2950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4600(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V

    return-object p0
.end method

.method public getFee()J
    .locals 2

    .line 2977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 2758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getFioAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicAddresses(I)Lwallet/core/jni/proto/FIO$PublicAddress;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2848
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getPublicAddresses(I)Lwallet/core/jni/proto/FIO$PublicAddress;

    move-result-object p1

    return-object p1
.end method

.method public getPublicAddressesCount()I
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getPublicAddressesCount()I

    move-result v0

    return v0
.end method

.method public getPublicAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation

    .line 2826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    .line 2827
    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getPublicAddressesList()Ljava/util/List;

    move-result-object v0

    .line 2826
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePublicAddresses(I)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4700(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;I)V

    return-object p0
.end method

.method public setFee(J)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2989
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4800(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;J)V

    return-object p0
.end method

.method public setFioAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$3900(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFioAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4100(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress$Builder;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    .line 2874
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/FIO$PublicAddress;

    .line 2873
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4200(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public setPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
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

    .line 2859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->access$4200(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method
