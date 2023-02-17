.class public Ldrinkless/org/ton/TonApi$ImportKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5fd69ee7


# instance fields
.field public exportedKey:Ldrinkless/org/ton/TonApi$ExportedKey;

.field public localPassword:[B

.field public mnemonicPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5055
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[BLdrinkless/org/ton/TonApi$ExportedKey;)V
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
            "exportedKey"
        }
    .end annotation

    .line 5058
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5059
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ImportKey;->localPassword:[B

    .line 5060
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ImportKey;->mnemonicPassword:[B

    .line 5061
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$ImportKey;->exportedKey:Ldrinkless/org/ton/TonApi$ExportedKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5fd69ee7

    return v0
.end method
