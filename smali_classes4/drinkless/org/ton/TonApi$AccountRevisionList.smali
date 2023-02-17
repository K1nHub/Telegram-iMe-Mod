.class public Ldrinkless/org/ton/TonApi$AccountRevisionList;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountRevisionList"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x1f6c64ca


# instance fields
.field public revisions:[Ldrinkless/org/ton/TonApi$FullAccountState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
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
            "revisions"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 102
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$AccountRevisionList;->revisions:[Ldrinkless/org/ton/TonApi$FullAccountState;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x1f6c64ca

    return v0
.end method
