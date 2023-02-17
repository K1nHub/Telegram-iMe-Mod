.class public Ldrinkless/org/ton/TonApi$ExportedEncryptedKey;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedEncryptedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x78a9fe54


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 688
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 692
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportedEncryptedKey;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x78a9fe54

    return v0
.end method
