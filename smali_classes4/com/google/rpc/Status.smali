.class public final Lcom/google/rpc/Status;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Status.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/Status$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/Status;",
        "Lcom/google/rpc/Status$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/Status;

.field public static final DETAILS_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code_:I

.field private details_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 735
    new-instance v0, Lcom/google/rpc/Status;

    invoke-direct {v0}, Lcom/google/rpc/Status;-><init>()V

    .line 738
    sput-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    .line 739
    const-class v1, Lcom/google/rpc/Status;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Status;->details_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/Status;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/rpc/Status;
    .locals 1

    .line 744
    sget-object v0, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 683
    sget-object p2, Lcom/google/rpc/Status$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 728
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 722
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 707
    :pswitch_2
    sget-object p1, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 709
    const-class p2, Lcom/google/rpc/Status;

    monitor-enter p2

    .line 710
    :try_start_0
    sget-object p1, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 712
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 715
    sput-object p1, Lcom/google/rpc/Status;->PARSER:Lcom/google/protobuf/Parser;

    .line 717
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

    .line 704
    :pswitch_3
    sget-object p1, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "message_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "details_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 691
    const-class p3, Lcom/google/protobuf/Any;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u001b"

    .line 700
    sget-object p3, Lcom/google/rpc/Status;->DEFAULT_INSTANCE:Lcom/google/rpc/Status;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 688
    :pswitch_5
    new-instance p1, Lcom/google/rpc/Status$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/Status$Builder;-><init>(Lcom/google/rpc/Status$1;)V

    return-object p1

    .line 685
    :pswitch_6
    new-instance p1, Lcom/google/rpc/Status;

    invoke-direct {p1}, Lcom/google/rpc/Status;-><init>()V

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

.method public getCode()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/rpc/Status;->code_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/rpc/Status;->message_:Ljava/lang/String;

    return-object v0
.end method
