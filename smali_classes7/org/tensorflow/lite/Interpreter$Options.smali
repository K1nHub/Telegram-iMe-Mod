.class public Lorg/tensorflow/lite/Interpreter$Options;
.super Ljava/lang/Object;
.source "Interpreter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field allowFp16PrecisionForFp32:Z

.field final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/Delegate;",
            ">;"
        }
    .end annotation
.end field

.field numThreads:I

.field useNNAPI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->numThreads:I

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->useNNAPI:Z

    .line 121
    iput-boolean v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->allowFp16PrecisionForFp32:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    return-void
.end method
