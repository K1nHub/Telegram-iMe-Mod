package com.smedialink.mapper.crypto;

import com.smedialink.model.wallet.crypto.send.AddressAccessState;
import com.smedialink.storage.domain.model.crypto.AccountInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AddressUiMapping.kt */
/* loaded from: classes3.dex */
public final class AddressUiMappingKt {
    public static final AddressAccessState mapToUI(AccountInfo.Address address) {
        Intrinsics.checkNotNullParameter(address, "<this>");
        return (address.isAddressSet() && address.getHasAccess()) ? new AddressAccessState.Granted(address.getAddressValue()) : address.isAddressSet() ? AddressAccessState.Denied.INSTANCE : AddressAccessState.NotAvailable.INSTANCE;
    }
}
