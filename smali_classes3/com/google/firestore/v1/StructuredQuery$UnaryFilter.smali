.class public final Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnaryFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private op_:I

.field private operandTypeCase_:I

.field private operandType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3813
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;-><init>()V

    .line 3816
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 3817
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3332
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    return-void
.end method

.method static synthetic access$4100()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1

    .line 3153
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V
    .locals 0

    .line 3153
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3153
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1

    .line 3822
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3580
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    return-object v0
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3470
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3471
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    return-void
.end method

.method private setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V
    .locals 0

    .line 3420
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3761
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3806
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3800
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3785
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3787
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    monitor-enter p2

    .line 3788
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3790
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3793
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 3795
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

    .line 3782
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operandType_"

    aput-object v0, p1, p3

    const-string p3, "operandTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "op_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 3769
    const-class p3, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002<\u0000"

    .line 3778
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3766
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 3763
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;-><init>()V

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

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 2

    .line 3456
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3457
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0

    .line 3459
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1

    .line 3397
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3398
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    :cond_0
    return-object v0
.end method
