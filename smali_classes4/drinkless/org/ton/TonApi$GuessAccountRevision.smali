.class public Ldrinkless/org/ton/TonApi$GuessAccountRevision;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuessAccountRevision"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x6eb892a2


# instance fields
.field public initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

.field public workchainId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4980
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InitialAccountState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialAccountState",
            "workchainId"
        }
    .end annotation

    .line 4983
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4984
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$GuessAccountRevision;->initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

    .line 4985
    iput p2, p0, Ldrinkless/org/ton/TonApi$GuessAccountRevision;->workchainId:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x6eb892a2    # 2.8561255E28f

    return v0
.end method
