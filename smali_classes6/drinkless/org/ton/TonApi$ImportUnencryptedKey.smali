.class public Ldrinkless/org/ton/TonApi$ImportUnencryptedKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportUnencryptedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x469ca6eb


# instance fields
.field public exportedUnencryptedKey:Ldrinkless/org/ton/TonApi$ExportedUnencryptedKey;

.field public localPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5130
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([BLdrinkless/org/ton/TonApi$ExportedUnencryptedKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "localPassword",
            "exportedUnencryptedKey"
        }
    .end annotation

    .line 5133
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5134
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ImportUnencryptedKey;->localPassword:[B

    .line 5135
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ImportUnencryptedKey;->exportedUnencryptedKey:Ldrinkless/org/ton/TonApi$ExportedUnencryptedKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x469ca6eb

    return v0
.end method
