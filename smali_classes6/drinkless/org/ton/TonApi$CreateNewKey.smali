.class public Ldrinkless/org/ton/TonApi$CreateNewKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateNewKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x6ef27df0


# instance fields
.field public localPassword:[B

.field public mnemonicPassword:[B

.field public randomExtraSeed:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4275
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localPassword",
            "mnemonicPassword",
            "randomExtraSeed"
        }
    .end annotation

    .line 4278
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4279
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$CreateNewKey;->localPassword:[B

    .line 4280
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$CreateNewKey;->mnemonicPassword:[B

    .line 4281
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$CreateNewKey;->randomExtraSeed:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x6ef27df0

    return v0
.end method
