.class public Ldrinkless/org/ton/TonApi$UpdateSyncState;
.super Ldrinkless/org/ton/TonApi$Update;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateSyncState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x47c823de


# instance fields
.field public syncState:Ldrinkless/org/ton/TonApi$SyncState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1585
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Update;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$SyncState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncState"
        }
    .end annotation

    .line 1588
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Update;-><init>()V

    .line 1589
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$UpdateSyncState;->syncState:Ldrinkless/org/ton/TonApi$SyncState;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x47c823de

    return v0
.end method
