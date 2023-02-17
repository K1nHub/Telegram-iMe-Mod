.class public Ldrinkless/org/ton/TonApi$SmcInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x439b963c


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3374
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 3377
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3378
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$SmcInfo;->id:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x439b963c

    return v0
.end method
