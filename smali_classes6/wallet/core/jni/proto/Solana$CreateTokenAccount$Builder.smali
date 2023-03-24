.class public final Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$CreateTokenAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$CreateTokenAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccount;",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4001
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$5900()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 3994
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMainAddress()Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1

    .line 4054
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6100(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public clearTokenAddress()Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1

    .line 4192
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6700(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public clearTokenMintAddress()Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1

    .line 4123
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6400(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V

    return-object p0
.end method

.method public getMainAddress()Ljava/lang/String;
    .locals 1

    .line 4015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getMainAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getMainAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAddress()Ljava/lang/String;
    .locals 1

    .line 4153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4166
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 4084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4097
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setMainAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4041
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6000(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMainAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4069
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6200(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4179
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6600(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6800(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenMintAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4110
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6300(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4139
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->access$6500(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
