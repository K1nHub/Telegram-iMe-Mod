.class public final Lcom/google/firestore/v1/ListenResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListenResponse.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenResponse$Builder;,
        Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firestore/v1/ListenResponse$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private responseTypeCase_:I

.field private responseType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 996
    new-instance v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

    .line 999
    sput-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    .line 1000
    const-class v1, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 1005
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 941
    sget-object p2, Lcom/google/firestore/v1/ListenResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 989
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 983
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 968
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 970
    const-class p2, Lcom/google/firestore/v1/ListenResponse;

    monitor-enter p2

    .line 971
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 973
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 976
    sput-object p1, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 978
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

    .line 965
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseType_"

    aput-object v0, p1, p3

    const-string p3, "responseTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 949
    const-class p3, Lcom/google/firestore/v1/TargetChange;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/firestore/v1/DocumentChange;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/firestore/v1/DocumentDelete;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/firestore/v1/ExistenceFilter;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/firestore/v1/DocumentRemove;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 961
    sget-object p3, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ListenResponse$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/ListenResponse$Builder;-><init>(Lcom/google/firestore/v1/ListenResponse$1;)V

    return-object p1

    .line 943
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {p1}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

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

.method public getDocumentChange()Lcom/google/firestore/v1/DocumentChange;
    .locals 2

    .line 160
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    return-object v0

    .line 163
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;
    .locals 2

    .line 230
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0

    .line 233
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;
    .locals 2

    .line 302
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 2

    .line 381
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0

    .line 384
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->forNumber(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChange()Lcom/google/firestore/v1/TargetChange;
    .locals 2

    .line 90
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    return-object v0
.end method
