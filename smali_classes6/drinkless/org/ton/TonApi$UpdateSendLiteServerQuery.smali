.class public Ldrinkless/org/ton/TonApi$UpdateSendLiteServerQuery;
.super Ldrinkless/org/ton/TonApi$Update;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateSendLiteServerQuery"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5cb16a24


# instance fields
.field public data:[B

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1557
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Update;-><init>()V

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation

    .line 1560
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Update;-><init>()V

    .line 1561
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$UpdateSendLiteServerQuery;->id:J

    .line 1562
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$UpdateSendLiteServerQuery;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5cb16a24

    return v0
.end method
