.class public final Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoDepositOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$DaoDeposit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$DaoDeposit;",
        "Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoDepositOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5626
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9100()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 5619
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1

    .line 5803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9900(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public clearChangeAddress()Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1

    .line 5748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9600(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1

    .line 5679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9300(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 5778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 5709
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getChangeAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 5640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9800(Lwallet/core/jni/proto/Nervos$DaoDeposit;J)V

    return-object p0
.end method

.method public setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9500(Lwallet/core/jni/proto/Nervos$DaoDeposit;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangeAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9700(Lwallet/core/jni/proto/Nervos$DaoDeposit;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9200(Lwallet/core/jni/proto/Nervos$DaoDeposit;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->access$9400(Lwallet/core/jni/proto/Nervos$DaoDeposit;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
