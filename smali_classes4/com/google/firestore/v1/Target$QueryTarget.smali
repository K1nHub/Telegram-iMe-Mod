.class public final Lcom/google/firestore/v1/Target$QueryTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$QueryTarget;",
        "Lcom/google/firestore/v1/Target$QueryTarget$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1185
    new-instance v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

    .line 1188
    sput-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1189
    const-class v1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const-string v0, ""

    .line 644
    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$700()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 638
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Target$QueryTarget;Ljava/lang/String;)V
    .locals 0

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 1194
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 924
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    return-object v0
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 0

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0

    .line 813
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 815
    iput p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1133
    sget-object p2, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1172
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1157
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1159
    const-class p2, Lcom/google/firestore/v1/Target$QueryTarget;

    monitor-enter p2

    .line 1160
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1162
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1165
    sput-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 1167
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

    .line 1154
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "queryType_"

    aput-object v0, p1, p3

    const-string p3, "queryTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "parent_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1141
    const-class p3, Lcom/google/firestore/v1/StructuredQuery;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    .line 1150
    sget-object p3, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1138
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object p1

    .line 1135
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {p1}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

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

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 2

    .line 800
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 803
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method
