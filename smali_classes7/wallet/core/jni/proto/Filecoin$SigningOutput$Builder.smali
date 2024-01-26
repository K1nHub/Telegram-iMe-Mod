.class public final Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Filecoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Filecoin$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Filecoin$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Filecoin$SigningOutput;",
        "Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Filecoin$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1103
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->access$1700()Lwallet/core/jni/proto/Filecoin$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Filecoin$1;)V
    .locals 0

    .line 1096
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearJson()Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;
    .locals 1

    .line 1156
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->access$1900(Lwallet/core/jni/proto/Filecoin$SigningOutput;)V

    return-object p0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->getJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setJson(Ljava/lang/String;)Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->access$1800(Lwallet/core/jni/proto/Filecoin$SigningOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1171
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1172
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Filecoin$SigningOutput;->access$2000(Lwallet/core/jni/proto/Filecoin$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
