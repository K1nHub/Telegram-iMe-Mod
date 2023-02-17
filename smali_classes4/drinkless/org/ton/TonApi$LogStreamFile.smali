.class public Ldrinkless/org/ton/TonApi$LogStreamFile;
.super Ldrinkless/org/ton/TonApi$LogStream;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogStreamFile"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x700fd5aa


# instance fields
.field public maxFileSize:J

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1269
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$LogStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "maxFileSize"
        }
    .end annotation

    .line 1278
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$LogStream;-><init>()V

    .line 1279
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$LogStreamFile;->path:Ljava/lang/String;

    .line 1280
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$LogStreamFile;->maxFileSize:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x700fd5aa

    return v0
.end method
