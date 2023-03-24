.class public final Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$Transaction$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 216
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->access$000()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Zilliqa$1;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->access$200(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-object p0
.end method

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->access$100(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
