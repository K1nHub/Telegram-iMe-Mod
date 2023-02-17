.class public Ldrinkless/org/ton/TonApi$MsgDataEncryptedArray;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataEncryptedArray"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x244759b2


# instance fields
.field public elements:[Ldrinkless/org/ton/TonApi$MsgDataEncrypted;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2611
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$MsgDataEncrypted;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 2614
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2615
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataEncryptedArray;->elements:[Ldrinkless/org/ton/TonApi$MsgDataEncrypted;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x244759b2

    return v0
.end method
