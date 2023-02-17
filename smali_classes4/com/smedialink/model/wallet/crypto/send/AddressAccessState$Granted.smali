.class public final Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;
.super Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;
.source "AddressAccessState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Granted"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;->address:Ljava/lang/String;

    return-object v0
.end method
