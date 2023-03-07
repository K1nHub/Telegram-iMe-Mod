.class public Ldrinkless/org/ton/TonApi$AccountList;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountList"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x783eb255


# instance fields
.field public accounts:[Ldrinkless/org/ton/TonApi$FullAccountState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$FullAccountState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accounts"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 72
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$AccountList;->accounts:[Ldrinkless/org/ton/TonApi$FullAccountState;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x783eb255

    return v0
.end method
