.class public Ldrinkless/org/ton/TonApi$RwalletAccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RwalletAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x2c147c28


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$RwalletConfig;

.field public seqno:I

.field public unlockedBalance:J

.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(JIJLdrinkless/org/ton/TonApi$RwalletConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "walletId",
            "seqno",
            "unlockedBalance",
            "config"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 278
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$RwalletAccountState;->walletId:J

    .line 279
    iput p3, p0, Ldrinkless/org/ton/TonApi$RwalletAccountState;->seqno:I

    .line 280
    iput-wide p4, p0, Ldrinkless/org/ton/TonApi$RwalletAccountState;->unlockedBalance:J

    .line 281
    iput-object p6, p0, Ldrinkless/org/ton/TonApi$RwalletAccountState;->config:Ldrinkless/org/ton/TonApi$RwalletConfig;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x2c147c28

    return v0
.end method
