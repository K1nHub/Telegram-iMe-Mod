.class public final Lcom/google/firebase/ktx/FirebaseKt;
.super Ljava/lang/Object;
.source "Firebase.kt"


# direct methods
.method public static final getApp(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/FirebaseApp;
    .locals 1

    const-string v0, "$this$app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    const-string v0, "FirebaseApp.getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
