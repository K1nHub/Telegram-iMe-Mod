.class public Ldrinkless/org/ton/TonApi$MsgDataDecryptedArray;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataDecryptedArray"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x1ca3b8f7


# instance fields
.field public elements:[Ldrinkless/org/ton/TonApi$MsgDataDecrypted;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2549
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$MsgDataDecrypted;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 2552
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2553
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataDecryptedArray;->elements:[Ldrinkless/org/ton/TonApi$MsgDataDecrypted;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x1ca3b8f7

    return v0
.end method
