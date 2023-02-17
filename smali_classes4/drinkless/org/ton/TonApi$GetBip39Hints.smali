.class public Ldrinkless/org/ton/TonApi$GetBip39Hints;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBip39Hints"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x70a1a216


# instance fields
.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4740
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 4743
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4744
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$GetBip39Hints;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x70a1a216

    return v0
.end method
