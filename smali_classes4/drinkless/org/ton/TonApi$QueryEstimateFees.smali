.class public Ldrinkless/org/ton/TonApi$QueryEstimateFees;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryEstimateFees"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x390ab1bf


# instance fields
.field public id:J

.field public ignoreChksig:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5653
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "ignoreChksig"
        }
    .end annotation

    .line 5656
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5657
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$QueryEstimateFees;->id:J

    .line 5658
    iput-boolean p3, p0, Ldrinkless/org/ton/TonApi$QueryEstimateFees;->ignoreChksig:Z

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x390ab1bf

    return v0
.end method
