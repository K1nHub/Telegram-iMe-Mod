.class public Ldrinkless/org/ton/TonApi$ChangeLocalPassword;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeLocalPassword"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x17efc841


# instance fields
.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;

.field public newLocalPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4209
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputKey",
            "newLocalPassword"
        }
    .end annotation

    .line 4212
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4213
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ChangeLocalPassword;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 4214
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ChangeLocalPassword;->newLocalPassword:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x17efc841

    return v0
.end method
