.class public Ldrinkless/org/ton/TonApi$ExportedUnencryptedKey;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedUnencryptedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x2b839ae8


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 778
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

    .line 781
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 782
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportedUnencryptedKey;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x2b839ae8

    return v0
.end method
