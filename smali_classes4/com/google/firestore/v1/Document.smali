.class public final Lcom/google/firestore/v1/Document;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Document.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Document$Builder;,
        Lcom/google/firestore/v1/Document$FieldsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Document;",
        "Lcom/google/firestore/v1/Document$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private createTime_:Lcom/google/protobuf/Timestamp;

.field private fields_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private updateTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1123
    new-instance v0, Lcom/google/firestore/v1/Document;

    invoke-direct {v0}, Lcom/google/firestore/v1/Document;-><init>()V

    .line 1126
    sput-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    .line 1127
    const-class v1, Lcom/google/firestore/v1/Document;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 107
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Document;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->getMutableFieldsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Document;->setUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 1132
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method private getMutableFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->fields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 534
    sget-object v0, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-void
.end method

.method private setUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    iput-object p1, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1070
    sget-object p2, Lcom/google/firestore/v1/Document$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1110
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1095
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1097
    const-class p2, Lcom/google/firestore/v1/Document;

    monitor-enter p2

    .line 1098
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1100
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1103
    sput-object p1, Lcom/google/firestore/v1/Document;->PARSER:Lcom/google/protobuf/Parser;

    .line 1105
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

    .line 1092
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "fields_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1078
    sget-object p3, Lcom/google/firestore/v1/Document$FieldsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "createTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "updateTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u00022\u0003\t\u0004\t"

    .line 1088
    sget-object p3, Lcom/google/firestore/v1/Document;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Document;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1075
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Document$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/Document$Builder;-><init>(Lcom/google/firestore/v1/Document$1;)V

    return-object p1

    .line 1072
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Document;

    invoke-direct {p1}, Lcom/google/firestore/v1/Document;-><init>()V

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

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/google/firestore/v1/Document;->internalGetFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firestore/v1/Document;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method
