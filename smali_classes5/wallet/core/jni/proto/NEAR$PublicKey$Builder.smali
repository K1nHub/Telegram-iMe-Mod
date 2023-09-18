.class public final Lwallet/core/jni/proto/NEAR$PublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$PublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$PublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$PublicKey;",
        "Lwallet/core/jni/proto/NEAR$PublicKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$PublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 222
    invoke-static {}, Lwallet/core/jni/proto/NEAR$PublicKey;->access$000()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$PublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/NEAR$PublicKey$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->access$400(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public clearKeyType()Lwallet/core/jni/proto/NEAR$PublicKey$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->access$200(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKeyType()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->getKeyType()I

    move-result v0

    return v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$PublicKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$PublicKey;->access$300(Lwallet/core/jni/proto/NEAR$PublicKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKeyType(I)Lwallet/core/jni/proto/NEAR$PublicKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 249
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$PublicKey;->access$100(Lwallet/core/jni/proto/NEAR$PublicKey;I)V

    return-object p0
.end method
