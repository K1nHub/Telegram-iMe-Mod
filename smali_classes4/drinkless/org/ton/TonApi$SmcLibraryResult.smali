.class public Ldrinkless/org/ton/TonApi$SmcLibraryResult;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcLibraryResult"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0xc27bbfe


# instance fields
.field public result:[Ldrinkless/org/ton/TonApi$SmcLibraryEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3436
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$SmcLibraryEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 3439
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3440
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SmcLibraryResult;->result:[Ldrinkless/org/ton/TonApi$SmcLibraryEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0xc27bbfe

    return v0
.end method
