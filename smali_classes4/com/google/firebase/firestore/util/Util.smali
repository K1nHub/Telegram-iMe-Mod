.class public Lcom/google/firebase/firestore/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final COMPARABLE_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method public static synthetic $r8$lambda$AmCZXquM48mSGN8EWX84HPtVZLM(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/firestore/util/Util;->lambda$crashMainThread$1(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 101
    new-instance v0, Lcom/google/firebase/firestore/util/Util$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/Util$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/Util;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/firebase/firestore/util/Util;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static compareBooleans(ZZ)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static compareByteStrings(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 227
    invoke-virtual {p1, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method public static compareDoubles(DD)I
    .locals 0

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result p0

    return p0
.end method

.method public static compareIntegers(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compareLongs(JJ)I
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->compareLongs(JJ)I

    move-result p0

    return p0
.end method

.method public static compareMixed(DJ)I
    .locals 0

    .line 97
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result p0

    return p0
.end method

.method public static crashMainThread(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 3

    .line 115
    invoke-virtual {p0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/Status$Code;->value()I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static synthetic lambda$crashMainThread$1(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 218
    throw p0
.end method

.method public static toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 6

    .line 198
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 201
    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 203
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
