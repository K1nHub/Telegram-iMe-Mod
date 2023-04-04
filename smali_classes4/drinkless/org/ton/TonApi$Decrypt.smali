.class public Ldrinkless/org/ton/TonApi$Decrypt;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decrypt"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x155685ae


# instance fields
.field public encryptedData:[B

.field public secret:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4354
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptedData",
            "secret"
        }
    .end annotation

    .line 4357
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4358
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Decrypt;->encryptedData:[B

    .line 4359
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Decrypt;->secret:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x155685ae

    return v0
.end method
