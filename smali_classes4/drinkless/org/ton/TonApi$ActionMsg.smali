.class public Ldrinkless/org/ton/TonApi$ActionMsg;
.super Ldrinkless/org/ton/TonApi$Action;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionMsg"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0xeb67750


# instance fields
.field public allowSendToUninited:Z

.field public messages:[Ldrinkless/org/ton/TonApi$MsgMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$MsgMessage;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messages",
            "allowSendToUninited"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    .line 392
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ActionMsg;->messages:[Ldrinkless/org/ton/TonApi$MsgMessage;

    .line 393
    iput-boolean p2, p0, Ldrinkless/org/ton/TonApi$ActionMsg;->allowSendToUninited:Z

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0xeb67750

    return v0
.end method
