.class public final Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;
.super Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;
.source "AddressAccessState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Denied"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;->INSTANCE:Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
