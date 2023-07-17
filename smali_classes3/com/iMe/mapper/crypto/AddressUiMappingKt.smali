.class public final Lcom/iMe/mapper/crypto/AddressUiMappingKt;
.super Ljava/lang/Object;
.source "AddressUiMapping.kt"


# direct methods
.method public static final mapToUI(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Z)Lcom/iMe/model/wallet/crypto/send/AddressAccessState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->getAddressValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Denied;->INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Denied;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;->INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    :goto_0
    return-object p1
.end method
