.class public Ldrinkless/org/ton/TonApi$DeleteKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5e26b733


# instance fields
.field public key:Ldrinkless/org/ton/TonApi$Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4418
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 4421
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4422
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DeleteKey;->key:Ldrinkless/org/ton/TonApi$Key;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5e26b733

    return v0
.end method
