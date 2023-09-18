.class public Ldrinkless/org/ton/TonApi$ImportPemKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportPemKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x48d8d51


# instance fields
.field public exportedKey:Ldrinkless/org/ton/TonApi$ExportedPemKey;

.field public keyPassword:[B

.field public localPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5093
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[BLdrinkless/org/ton/TonApi$ExportedPemKey;)V
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
            "exportedKey"
        }
    .end annotation

    .line 5096
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5097
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ImportPemKey;->localPassword:[B

    .line 5098
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ImportPemKey;->keyPassword:[B

    .line 5099
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$ImportPemKey;->exportedKey:Ldrinkless/org/ton/TonApi$ExportedPemKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x48d8d51

    return v0
.end method
