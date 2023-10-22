.class public final Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$DeleteAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$DeleteAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$DeleteAccount;",
        "Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$DeleteAccountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4381
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->access$7200()Lwallet/core/jni/proto/NEAR$DeleteAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 4374
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBeneficiaryId()Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    .locals 1

    .line 4418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->access$7400(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-object p0
.end method

.method public getBeneficiaryId()Ljava/lang/String;
    .locals 1

    .line 4391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getBeneficiaryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeneficiaryIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getBeneficiaryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBeneficiaryId(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->access$7300(Lwallet/core/jni/proto/NEAR$DeleteAccount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBeneficiaryIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->access$7500(Lwallet/core/jni/proto/NEAR$DeleteAccount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
