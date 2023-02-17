.class public Ldrinkless/org/ton/TonApi$WalletHighloadV1AccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalletHighloadV1AccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x6057e4dc


# instance fields
.field public seqno:I

.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
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

    .line 192
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 193
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$WalletHighloadV1AccountState;->walletId:J

    .line 194
    iput p3, p0, Ldrinkless/org/ton/TonApi$WalletHighloadV1AccountState;->seqno:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x6057e4dc

    return v0
.end method
