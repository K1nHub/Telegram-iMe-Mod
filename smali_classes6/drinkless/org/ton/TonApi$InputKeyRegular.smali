.class public Ldrinkless/org/ton/TonApi$InputKeyRegular;
.super Ldrinkless/org/ton/TonApi$InputKey;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputKeyRegular"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x211ab962


# instance fields
.field public key:Ldrinkless/org/ton/TonApi$Key;

.field public localPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1093
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InputKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Key;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "localPassword"
        }
    .end annotation

    .line 1096
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InputKey;-><init>()V

    .line 1097
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$InputKeyRegular;->key:Ldrinkless/org/ton/TonApi$Key;

    .line 1098
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$InputKeyRegular;->localPassword:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x211ab962

    return v0
.end method
