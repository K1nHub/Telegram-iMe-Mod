.class public final Lcom/google/android/gms/internal/firebase_ml/zzib;
.super Ljava/lang/Object;


# static fields
.field public static final zzzx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzib;->zzzx:Ljava/lang/String;

    return-void
.end method
