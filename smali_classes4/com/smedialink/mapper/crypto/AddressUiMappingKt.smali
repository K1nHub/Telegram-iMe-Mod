.class public final Lcom/smedialink/mapper/crypto/AddressUiMappingKt;
.super Ljava/lang/Object;
.source "AddressUiMapping.kt"


# direct methods
.method public static final mapToUI(Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;)Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;->getHasAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;->getAddressValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;->INSTANCE:Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$NotAvailable;->INSTANCE:Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    :goto_0
    return-object v0
.end method
