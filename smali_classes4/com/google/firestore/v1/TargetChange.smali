.class public final Lcom/google/firestore/v1/TargetChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TargetChange.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TargetChange$Builder;,
        Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/TargetChange;",
        "Lcom/google/firestore/v1/TargetChange$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TargetChange;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cause_:Lcom/google/rpc/Status;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private resumeToken_:Lcom/google/protobuf/ByteString;

.field private targetChangeType_:I

.field private targetIdsMemoizedSerializedSize:I

.field private targetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1193
    new-instance v0, Lcom/google/firestore/v1/TargetChange;

    invoke-direct {v0}, Lcom/google/firestore/v1/TargetChange;-><init>()V

    .line 1196
    sput-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    .line 1197
    const-class v1, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 315
    iput v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIdsMemoizedSerializedSize:I

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 20
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 1202
    sget-object v0, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1140
    sget-object p2, Lcom/google/firestore/v1/TargetChange$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1180
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1165
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1167
    const-class p2, Lcom/google/firestore/v1/TargetChange;

    monitor-enter p2

    .line 1168
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1170
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1173
    sput-object p1, Lcom/google/firestore/v1/TargetChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 1175
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

    .line 1162
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetChangeType_"

    aput-object v0, p1, p3

    const-string p3, "targetIds_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cause_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resumeToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\u000c\u0002\'\u0003\t\u0004\n\u0006\t"

    .line 1158
    sget-object p3, Lcom/google/firestore/v1/TargetChange;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TargetChange;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1145
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/TargetChange$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/TargetChange$Builder;-><init>(Lcom/google/firestore/v1/TargetChange$1;)V

    return-object p1

    .line 1142
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/TargetChange;

    invoke-direct {p1}, Lcom/google/firestore/v1/TargetChange;-><init>()V

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

.method public getCause()Lcom/google/rpc/Status;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->cause_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1

    .line 222
    iget v0, p0, Lcom/google/firestore/v1/TargetChange;->targetChangeType_:I

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->forNumber(I)Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->UNRECOGNIZED:Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    :cond_0
    return-object v0
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange;->targetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method
