.class public Ldrinkless/org/ton/TonApi$ExportUnencryptedKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportUnencryptedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x25d438c0


# instance fields
.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4634
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputKey"
        }
    .end annotation

    .line 4637
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4638
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportUnencryptedKey;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x25d438c0

    return v0
.end method
