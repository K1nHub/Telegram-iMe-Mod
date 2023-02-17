.class public final synthetic Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lio/grpc/CallCredentials$MetadataApplier;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$ExternalSyntheticLambda1;->f$0:Lio/grpc/CallCredentials$MetadataApplier;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$ExternalSyntheticLambda1;->f$0:Lio/grpc/CallCredentials$MetadataApplier;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->$r8$lambda$U4SmtbYX6g1cFehEkquo8qI-tpw(Lio/grpc/CallCredentials$MetadataApplier;Ljava/lang/String;)V

    return-void
.end method
