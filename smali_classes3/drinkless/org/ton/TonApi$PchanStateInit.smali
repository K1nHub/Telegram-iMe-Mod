.class public Ldrinkless/org/ton/TonApi$PchanStateInit;
.super Ldrinkless/org/ton/TonApi$PchanState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanStateInit"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x46d5f308


# instance fields
.field public A:J

.field public B:J

.field public expireAt:J

.field public minA:J

.field public minB:J

.field public signedA:Z

.field public signedB:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2914
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanState;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZJJJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signedA",
            "signedB",
            "minA",
            "minB",
            "expireAt",
            "A",
            "B"
        }
    .end annotation

    .line 2917
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanState;-><init>()V

    .line 2918
    iput-boolean p1, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->signedA:Z

    .line 2919
    iput-boolean p2, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->signedB:Z

    .line 2920
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->minA:J

    .line 2921
    iput-wide p5, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->minB:J

    .line 2922
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->expireAt:J

    .line 2923
    iput-wide p9, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->A:J

    .line 2924
    iput-wide p11, p0, Ldrinkless/org/ton/TonApi$PchanStateInit;->B:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x46d5f308

    return v0
.end method
