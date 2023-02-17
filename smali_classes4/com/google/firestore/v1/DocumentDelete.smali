.class public final Lcom/google/firestore/v1/DocumentDelete;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentDelete.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentDelete$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentDelete;",
        "Lcom/google/firestore/v1/DocumentDelete$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentDelete;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x6


# instance fields
.field private document_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private removedTargetIdsMemoizedSerializedSize:I

.field private removedTargetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 667
    new-instance v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentDelete;-><init>()V

    .line 670
    sput-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    .line 671
    const-class v1, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIdsMemoizedSerializedSize:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 676
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 616
    sget-object p2, Lcom/google/firestore/v1/DocumentDelete$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 660
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 654
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 639
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 641
    const-class p2, Lcom/google/firestore/v1/DocumentDelete;

    monitor-enter p2

    .line 642
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 644
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 647
    sput-object p1, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    .line 649
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

    .line 636
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "document_"

    aput-object v0, p1, p3

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "removedTargetIds_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0001\u0000\u0001\u0208\u0004\t\u0006\'"

    .line 632
    sget-object p3, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 621
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/DocumentDelete$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/DocumentDelete$Builder;-><init>(Lcom/google/firestore/v1/DocumentDelete$1;)V

    return-object p1

    .line 618
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentDelete;-><init>()V

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

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method
