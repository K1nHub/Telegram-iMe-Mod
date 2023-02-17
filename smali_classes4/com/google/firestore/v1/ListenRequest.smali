.class public final Lcom/google/firestore/v1/ListenRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListenRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenRequest$Builder;,
        Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenRequest;",
        "Lcom/google/firestore/v1/ListenRequest$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_TARGET_FIELD_NUMBER:I = 0x2

.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_TARGET_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetChangeCase_:I

.field private targetChange_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 845
    new-instance v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

    .line 848
    sput-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    .line 849
    const-class v1, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 261
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListenRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setAddTarget(Lcom/google/firestore/v1/Target;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListenRequest;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setRemoveTarget(I)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 854
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 436
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest$Builder;

    return-object v0
.end method

.method private setAddTarget(Lcom/google/firestore/v1/Target;)V
    .locals 0

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 172
    iput p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    return-void
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-void
.end method

.method private setRemoveTarget(I)V
    .locals 1

    const/4 v0, 0x3

    .line 231
    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 791
    sget-object p2, Lcom/google/firestore/v1/ListenRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 838
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 832
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 817
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 819
    const-class p2, Lcom/google/firestore/v1/ListenRequest;

    monitor-enter p2

    .line 820
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 822
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 825
    sput-object p1, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 827
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

    .line 814
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetChange_"

    aput-object v0, p1, p3

    const-string p3, "targetChangeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "database_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 799
    const-class p3, Lcom/google/firestore/v1/Target;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    sget-object p3, Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u0002<\u0000\u00037\u0000\u00042"

    .line 810
    sget-object p3, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 796
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ListenRequest$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/ListenRequest$Builder;-><init>(Lcom/google/firestore/v1/ListenRequest$1;)V

    return-object p1

    .line 793
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {p1}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

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
