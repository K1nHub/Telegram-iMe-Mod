.class final synthetic Lcom/google/mlkit/common/sdkinternal/zzk;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;


# direct methods
.method constructor <init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzk;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzk;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza()V

    return-void
.end method
