.class public Ldrinkless/org/ton/TonApi$Key;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x75eb6c2b


# instance fields
.field public publicKey:Ljava/lang/String;

.field public secret:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1147
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "secret"
        }
    .end annotation

    .line 1150
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1151
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Key;->publicKey:Ljava/lang/String;

    .line 1152
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Key;->secret:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x75eb6c2b

    return v0
.end method
