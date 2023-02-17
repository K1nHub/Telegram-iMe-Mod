.class public Ldrinkless/org/ton/TonApi$PchanValidatePromise;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanValidatePromise"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0xf64c4e2


# instance fields
.field public promise:Ldrinkless/org/ton/TonApi$PchanPromise;

.field public publicKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5617
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([BLdrinkless/org/ton/TonApi$PchanPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "promise"
        }
    .end annotation

    .line 5620
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5621
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanValidatePromise;->publicKey:[B

    .line 5622
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$PchanValidatePromise;->promise:Ldrinkless/org/ton/TonApi$PchanPromise;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0xf64c4e2

    return v0
.end method
