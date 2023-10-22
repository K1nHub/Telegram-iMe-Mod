.class public final Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$FreezeBalanceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContract;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2590
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$3600()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 2583
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrozenBalance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4100(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public clearFrozenDuration()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4300(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2643
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$3800(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public clearReceiverAddress()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4800(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4500(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-object p0
.end method

.method public getFrozenBalance()J
    .locals 2

    .line 2673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getFrozenBalance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrozenDuration()J
    .locals 2

    .line 2713
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getFrozenDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2617
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getReceiverAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 2753
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFrozenBalance(J)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2685
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4000(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;J)V

    return-object p0
.end method

.method public setFrozenDuration(J)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4200(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;J)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$3700(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$3900(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4700(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4900(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4400(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->access$4600(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
