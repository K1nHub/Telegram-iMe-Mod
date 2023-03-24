.class public final Lwallet/core/jni/proto/Stellar$MemoText$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoTextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$MemoText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$MemoText;",
        "Lwallet/core/jni/proto/Stellar$MemoText$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoTextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3969
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoText;->access$5900()Lwallet/core/jni/proto/Stellar$MemoText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 3962
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$MemoText$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearText()Lwallet/core/jni/proto/Stellar$MemoText$Builder;
    .locals 1

    .line 4006
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoText;->access$6100(Lwallet/core/jni/proto/Stellar$MemoText;)V

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 3979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$MemoText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$MemoText;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$MemoText$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3997
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3998
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$MemoText;->access$6000(Lwallet/core/jni/proto/Stellar$MemoText;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$MemoText$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoText;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$MemoText;->access$6200(Lwallet/core/jni/proto/Stellar$MemoText;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
