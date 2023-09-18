.class public Ldrinkless/org/ton/TonApi$MsgDecrypt;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDecrypt"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0xd53cf09


# instance fields
.field public data:Ldrinkless/org/ton/TonApi$MsgDataEncryptedArray;

.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5267
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$MsgDataEncryptedArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputKey",
            "data"
        }
    .end annotation

    .line 5270
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5271
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDecrypt;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 5272
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgDecrypt;->data:Ldrinkless/org/ton/TonApi$MsgDataEncryptedArray;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0xd53cf09

    return v0
.end method
