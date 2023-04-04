.class public Ldrinkless/org/ton/TonApi$WalletHighloadV2AccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalletHighloadV2AccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x6b82a2b1


# instance fields
.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "walletId"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 221
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$WalletHighloadV2AccountState;->walletId:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x6b82a2b1

    return v0
.end method
