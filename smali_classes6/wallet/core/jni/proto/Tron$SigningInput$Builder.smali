.class public final Lwallet/core/jni/proto/Tron$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$SigningInput;",
        "Lwallet/core/jni/proto/Tron$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13520
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningInput;->access$24600()Lwallet/core/jni/proto/Tron$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 13513
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrivateKey()Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1

    .line 13630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->access$25100(Lwallet/core/jni/proto/Tron$SigningInput;)V

    return-object p0
.end method

.method public clearTransaction()Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1

    .line 13590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->access$24900(Lwallet/core/jni/proto/Tron$SigningInput;)V

    return-object p0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Tron$Transaction;
    .locals 1

    .line 13544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->getTransaction()Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 13533
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeTransaction(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->access$24800(Lwallet/core/jni/proto/Tron$SigningInput;Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->access$25000(Lwallet/core/jni/proto/Tron$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Tron$Transaction$Builder;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13567
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13568
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->access$24700(Lwallet/core/jni/proto/Tron$SigningInput;Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method

.method public setTransaction(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->access$24700(Lwallet/core/jni/proto/Tron$SigningInput;Lwallet/core/jni/proto/Tron$Transaction;)V

    return-object p0
.end method
