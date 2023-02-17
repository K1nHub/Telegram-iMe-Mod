.class public Ldrinkless/org/ton/TonApi$WalletV3AccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalletV3AccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x608557b6


# instance fields
.field public seqno:I

.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "walletId",
            "seqno"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 164
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$WalletV3AccountState;->walletId:J

    .line 165
    iput p3, p0, Ldrinkless/org/ton/TonApi$WalletV3AccountState;->seqno:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x608557b6

    return v0
.end method
