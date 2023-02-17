.class public Ldrinkless/org/ton/TonApi$WalletHighloadV1InitialAccountState;
.super Ldrinkless/org/ton/TonApi$InitialAccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalletHighloadV1InitialAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x138b61ba


# instance fields
.field public publicKey:Ljava/lang/String;

.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 945
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "walletId"
        }
    .end annotation

    .line 948
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    .line 949
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$WalletHighloadV1InitialAccountState;->publicKey:Ljava/lang/String;

    .line 950
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$WalletHighloadV1InitialAccountState;->walletId:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x138b61ba

    return v0
.end method
