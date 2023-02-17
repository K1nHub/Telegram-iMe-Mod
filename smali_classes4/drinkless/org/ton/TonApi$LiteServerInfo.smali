.class public Ldrinkless/org/ton/TonApi$LiteServerInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteServerInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x4a84018d


# instance fields
.field public capabilities:J

.field public now:J

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2336
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "now",
            "version",
            "capabilities"
        }
    .end annotation

    .line 2339
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2340
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$LiteServerInfo;->now:J

    .line 2341
    iput p3, p0, Ldrinkless/org/ton/TonApi$LiteServerInfo;->version:I

    .line 2342
    iput-wide p4, p0, Ldrinkless/org/ton/TonApi$LiteServerInfo;->capabilities:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x4a84018d

    return v0
.end method
