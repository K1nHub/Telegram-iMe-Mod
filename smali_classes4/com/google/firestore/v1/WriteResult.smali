.class public final Lcom/google/firestore/v1/WriteResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WriteResult.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/WriteResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/WriteResult;",
        "Lcom/google/firestore/v1/WriteResult$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_RESULTS_FIELD_NUMBER:I = 0x2

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x1


# instance fields
.field private transformResults_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 659
    new-instance v0, Lcom/google/firestore/v1/WriteResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/WriteResult;-><init>()V

    .line 662
    sput-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    .line 663
    const-class v1, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/WriteResult;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 608
    sget-object p2, Lcom/google/firestore/v1/WriteResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 652
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 646
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 631
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 633
    const-class p2, Lcom/google/firestore/v1/WriteResult;

    monitor-enter p2

    .line 634
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 636
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 639
    sput-object p1, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 641
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

    .line 628
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "updateTime_"

    aput-object v0, p1, p3

    const-string p3, "transformResults_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 616
    const-class p3, Lcom/google/firestore/v1/Value;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    .line 624
    sget-object p3, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 613
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/WriteResult$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/WriteResult$Builder;-><init>(Lcom/google/firestore/v1/WriteResult$1;)V

    return-object p1

    .line 610
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/WriteResult;

    invoke-direct {p1}, Lcom/google/firestore/v1/WriteResult;-><init>()V

    return-object p1

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

.method public getTransformResults(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1
.end method

.method public getTransformResultsCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method
