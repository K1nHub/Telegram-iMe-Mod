.class public final Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4026
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6400()Lwallet/core/jni/proto/Binance$SendOrder$Input;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 4019
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoins(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;"
        }
    .end annotation

    .line 4191
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$7000(Lwallet/core/jni/proto/Binance$SendOrder$Input;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 4177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 4179
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 4178
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6900(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4151
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4152
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6900(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6800(Lwallet/core/jni/proto/Binance$SendOrder$Input;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addCoins(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6800(Lwallet/core/jni/proto/Binance$SendOrder$Input;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearAddress()Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1

    .line 4065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4066
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6600(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public clearCoins()Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1

    .line 4203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$7100(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-object p0
.end method

.method public getAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoins(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getCoins(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object p1

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 4091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getCoinsCount()I

    move-result v0

    return v0
.end method

.method public getCoinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 4079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 4080
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getCoinsList()Ljava/util/List;

    move-result-object v0

    .line 4079
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCoins(I)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4215
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4216
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$7200(Lwallet/core/jni/proto/Binance$SendOrder$Input;I)V

    return-object p0
.end method

.method public setAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4052
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4053
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6500(Lwallet/core/jni/proto/Binance$SendOrder$Input;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 4125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 4127
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 4126
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6700(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->access$6700(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method
