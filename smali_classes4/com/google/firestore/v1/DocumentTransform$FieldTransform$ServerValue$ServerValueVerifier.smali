.class final Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue$ServerValueVerifier;
.super Ljava/lang/Object;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerValueVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 362
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue$ServerValueVerifier;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue$ServerValueVerifier;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue$ServerValueVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 365
    invoke-static {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->forNumber(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
