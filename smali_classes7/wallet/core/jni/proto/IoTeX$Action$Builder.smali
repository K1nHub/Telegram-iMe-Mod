.class public final Lwallet/core/jni/proto/IoTeX$Action$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Action;",
        "Lwallet/core/jni/proto/IoTeX$Action$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$ActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11691
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Action;->access$23300()Lwallet/core/jni/proto/IoTeX$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 11684
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Action$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCore()Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1

    .line 11761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Action;->access$23600(Lwallet/core/jni/proto/IoTeX$Action;)V

    return-object p0
.end method

.method public clearSenderPubKey()Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1

    .line 11801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Action;->access$23800(Lwallet/core/jni/proto/IoTeX$Action;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1

    .line 11841
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Action;->access$24000(Lwallet/core/jni/proto/IoTeX$Action;)V

    return-object p0
.end method

.method public getCore()Lwallet/core/jni/proto/IoTeX$ActionCore;
    .locals 1

    .line 11715
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Action;->getCore()Lwallet/core/jni/proto/IoTeX$ActionCore;

    move-result-object v0

    return-object v0
.end method

.method public getSenderPubKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Action;->getSenderPubKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Action;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCore()Z
    .locals 1

    .line 11704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Action;->hasCore()Z

    move-result v0

    return v0
.end method

.method public mergeCore(Lwallet/core/jni/proto/IoTeX$ActionCore;)Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Action;->access$23500(Lwallet/core/jni/proto/IoTeX$Action;Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public setCore(Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;)Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Action;->access$23400(Lwallet/core/jni/proto/IoTeX$Action;Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public setCore(Lwallet/core/jni/proto/IoTeX$ActionCore;)Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Action;->access$23400(Lwallet/core/jni/proto/IoTeX$Action;Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public setSenderPubKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11788
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11789
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Action;->access$23700(Lwallet/core/jni/proto/IoTeX$Action;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Action;->access$23900(Lwallet/core/jni/proto/IoTeX$Action;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
