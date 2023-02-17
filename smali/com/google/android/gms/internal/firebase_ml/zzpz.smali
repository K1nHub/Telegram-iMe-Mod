.class final Lcom/google/android/gms/internal/firebase_ml/zzpz;
.super Ljava/lang/Object;


# instance fields
.field private final zzayo:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method constructor <init>(Lorg/tensorflow/lite/Interpreter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    return-void
.end method


# virtual methods
.method final close()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    return-void
.end method

.method final getInputIndex(Ljava/lang/String;)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getInputIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method final getOutputIndex(Ljava/lang/String;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method final resizeInput(I[I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/Interpreter;->resizeInput(I[I)V

    return-void
.end method

.method final runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method final setUseNNAPI(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpz;->zzayo:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setUseNNAPI(Z)V

    return-void
.end method
