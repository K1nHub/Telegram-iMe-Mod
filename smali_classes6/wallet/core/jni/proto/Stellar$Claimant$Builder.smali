.class public final Lwallet/core/jni/proto/Stellar$Claimant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$Claimant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$Claimant;",
        "Lwallet/core/jni/proto/Stellar$Claimant$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2358
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3200()Lwallet/core/jni/proto/Stellar$Claimant;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 2351
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Claimant$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccount()Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1

    .line 2411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3400(Lwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public clearPredicate()Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1

    .line 2492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3800(Lwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->getAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPredicate()Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    .locals 1

    .line 2467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->getPredicate()Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    move-result-object v0

    return-object v0
.end method

.method public getPredicateValue()I
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->getPredicateValue()I

    move-result v0

    return v0
.end method

.method public setAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2398
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3300(Lwallet/core/jni/proto/Stellar$Claimant;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2426
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3500(Lwallet/core/jni/proto/Stellar$Claimant;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPredicate(Lwallet/core/jni/proto/Stellar$ClaimPredicate;)Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2479
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3700(Lwallet/core/jni/proto/Stellar$Claimant;Lwallet/core/jni/proto/Stellar$ClaimPredicate;)V

    return-object p0
.end method

.method public setPredicateValue(I)Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->access$3600(Lwallet/core/jni/proto/Stellar$Claimant;I)V

    return-object p0
.end method
