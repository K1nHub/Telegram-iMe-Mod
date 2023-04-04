.class public Ldrinkless/org/ton/TonApi$RwalletConfig;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RwalletConfig"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5187b66


# instance fields
.field public limits:[Ldrinkless/org/ton/TonApi$RwalletLimit;

.field public startAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3311
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[Ldrinkless/org/ton/TonApi$RwalletLimit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startAt",
            "limits"
        }
    .end annotation

    .line 3314
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3315
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$RwalletConfig;->startAt:J

    .line 3316
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RwalletConfig;->limits:[Ldrinkless/org/ton/TonApi$RwalletLimit;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5187b66

    return v0
.end method
