.class public Ldrinkless/org/ton/TonApi$PchanPackPromise;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanPackPromise"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x32c3f53f


# instance fields
.field public promise:Ldrinkless/org/ton/TonApi$PchanPromise;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5512
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$PchanPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promise"
        }
    .end annotation

    .line 5515
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5516
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanPackPromise;->promise:Ldrinkless/org/ton/TonApi$PchanPromise;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x32c3f53f

    return v0
.end method
