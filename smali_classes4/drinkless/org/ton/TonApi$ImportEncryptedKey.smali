.class public Ldrinkless/org/ton/TonApi$ImportEncryptedKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportEncryptedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x2724d3de


# instance fields
.field public exportedEncryptedKey:Ldrinkless/org/ton/TonApi$ExportedEncryptedKey;

.field public keyPassword:[B

.field public localPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5017
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[BLdrinkless/org/ton/TonApi$ExportedEncryptedKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localPassword",
            "keyPassword",
            "exportedEncryptedKey"
        }
    .end annotation

    .line 5020
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5021
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ImportEncryptedKey;->localPassword:[B

    .line 5022
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ImportEncryptedKey;->keyPassword:[B

    .line 5023
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$ImportEncryptedKey;->exportedEncryptedKey:Ldrinkless/org/ton/TonApi$ExportedEncryptedKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x2724d3de

    return v0
.end method
