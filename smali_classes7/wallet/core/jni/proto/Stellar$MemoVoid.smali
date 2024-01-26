.class public final Lwallet/core/jni/proto/Stellar$MemoVoid;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoVoidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoVoid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$MemoVoid;",
        "Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoVoidOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoVoid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3777
    new-instance v0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$MemoVoid;-><init>()V

    .line 3780
    sput-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    .line 3781
    const-class v1, Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5700()Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1

    .line 3619
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object v0
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1

    .line 3786
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;
    .locals 1

    .line 3701
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$MemoVoid;)Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3704
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3678
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3684
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3642
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3649
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3689
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3696
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3666
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3673
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3629
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3636
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3654
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoVoid;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3661
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoVoid;",
            ">;"
        }
    .end annotation

    .line 3792
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 3732
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3770
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 3764
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3749
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoVoid;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3751
    const-class p2, Lwallet/core/jni/proto/Stellar$MemoVoid;

    monitor-enter p2

    .line 3752
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoVoid;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3754
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3757
    sput-object p1, Lwallet/core/jni/proto/Stellar$MemoVoid;->PARSER:Lcom/google/protobuf/Parser;

    .line 3759
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 3746
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    return-object p1

    :pswitch_4
    const-string p1, "\u0000\u0000"

    .line 3742
    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoVoid;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3737
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;

    invoke-direct {p1, p2}, Lwallet/core/jni/proto/Stellar$MemoVoid$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 3734
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoVoid;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$MemoVoid;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
