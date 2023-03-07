.class public Ldrinkless/org/ton/TonApi$UninitedAccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitedAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x5abd9708


# instance fields
.field public frozenHash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frozenHash"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 339
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$UninitedAccountState;->frozenHash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x5abd9708

    return v0
.end method
