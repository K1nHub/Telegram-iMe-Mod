.class public Ldrinkless/org/ton/TonApi$RwalletInitialAccountState;
.super Ldrinkless/org/ton/TonApi$InitialAccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RwalletInitialAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x45b90c14


# instance fields
.field public initPublicKey:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;

.field public walletId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initPublicKey",
            "publicKey",
            "walletId"
        }
    .end annotation

    .line 1007
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    .line 1008
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RwalletInitialAccountState;->initPublicKey:Ljava/lang/String;

    .line 1009
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RwalletInitialAccountState;->publicKey:Ljava/lang/String;

    .line 1010
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$RwalletInitialAccountState;->walletId:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x45b90c14

    return v0
.end method
