.class public final Lwallet/core/jni/proto/Nano$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nano.java"

# interfaces
.implements Lwallet/core/jni/proto/Nano$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nano$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nano$SigningInput;",
        "Lwallet/core/jni/proto/Nano$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nano$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 724
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->access$000()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nano$1;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBalance()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1500(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearLinkBlock()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$700(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearLinkOneof()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$100(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearLinkRecipient()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$900(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearParentBlock()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$500(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$300(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearRepresentative()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 1002
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1200(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public clearWork()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1800(Lwallet/core/jni/proto/Nano$SigningInput;)V

    return-object p0
.end method

.method public getBalance()Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBalanceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getBalanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLinkBlock()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getLinkBlock()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLinkOneofCase()Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getLinkOneofCase()Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getLinkRecipient()Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getLinkRecipient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getLinkRecipientBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParentBlock()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getParentBlock()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentative()Ljava/lang/String;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getRepresentative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentativeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getRepresentativeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWork()Ljava/lang/String;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getWork()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getWorkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLinkBlock()Z
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->hasLinkBlock()Z

    move-result v0

    return v0
.end method

.method public hasLinkRecipient()Z
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->hasLinkRecipient()Z

    move-result v0

    return v0
.end method

.method public setBalance(Ljava/lang/String;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1400(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBalanceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1086
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1600(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLinkBlock(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$600(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLinkRecipient(Ljava/lang/String;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$800(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLinkRecipientBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1000(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParentBlock(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$400(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$200(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRepresentative(Ljava/lang/String;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1100(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRepresentativeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1300(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWork(Ljava/lang/String;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1700(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWorkBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1155
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1156
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->access$1900(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
