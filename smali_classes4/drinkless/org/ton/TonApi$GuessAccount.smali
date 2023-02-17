.class public Ldrinkless/org/ton/TonApi$GuessAccount;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuessAccount"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x679293a0


# instance fields
.field public publicKey:Ljava/lang/String;

.field public rwalletInitPublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4944
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "rwalletInitPublicKey"
        }
    .end annotation

    .line 4947
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4948
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$GuessAccount;->publicKey:Ljava/lang/String;

    .line 4949
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$GuessAccount;->rwalletInitPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x679293a0

    return v0
.end method
