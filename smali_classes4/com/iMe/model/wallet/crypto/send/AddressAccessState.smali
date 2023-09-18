.class public abstract Lcom/iMe/model/wallet/crypto/send/AddressAccessState;
.super Ljava/lang/Object;
.source "AddressAccessState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Denied;,
        Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;,
        Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState;-><init>()V

    return-void
.end method
