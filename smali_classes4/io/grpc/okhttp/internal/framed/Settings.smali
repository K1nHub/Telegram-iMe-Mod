.class public final Lio/grpc/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 85
    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    .line 122
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method getHeaderTableSize()I
    .locals 2

    .line 147
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getMaxFrameSize(I)I
    .locals 1

    .line 184
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public isSet(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 117
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(III)Lio/grpc/okhttp/internal/framed/Settings;
    .locals 4

    .line 93
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 98
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_0

    .line 102
    :cond_1
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 105
    iget p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr p2, v1

    iput p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_1

    .line 107
    :cond_2
    iget p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    .line 110
    :goto_1
    aput p3, v0, p1

    return-object p0
.end method

.method size()I
    .locals 1

    .line 135
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
