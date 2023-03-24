.class public final Lwallet/core/jni/proto/Polkadot$Balance$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$BalanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Balance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Balance;",
        "Lwallet/core/jni/proto/Polkadot$Balance$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$BalanceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1139
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1300()Lwallet/core/jni/proto/Polkadot$Balance;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 1132
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Balance$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMessageOneof()Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1400(Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1

    .line 1198
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1700(Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-object p0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->getTransfer()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1600(Lwallet/core/jni/proto/Polkadot$Balance;Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;)Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1500(Lwallet/core/jni/proto/Polkadot$Balance;Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Balance;->access$1500(Lwallet/core/jni/proto/Polkadot$Balance;Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-object p0
.end method
