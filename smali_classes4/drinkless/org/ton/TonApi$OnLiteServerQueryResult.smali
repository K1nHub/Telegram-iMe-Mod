.class public Ldrinkless/org/ton/TonApi$OnLiteServerQueryResult;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLiteServerQueryResult"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x7a92da5e


# instance fields
.field public bytes:[B

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5375
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

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
            "bytes"
        }
    .end annotation

    .line 5378
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5379
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$OnLiteServerQueryResult;->id:J

    .line 5380
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$OnLiteServerQueryResult;->bytes:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x7a92da5e

    return v0
.end method
