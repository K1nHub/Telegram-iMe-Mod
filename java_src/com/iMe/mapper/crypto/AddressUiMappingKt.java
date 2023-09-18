package com.iMe.mapper.crypto;

import com.iMe.model.wallet.crypto.send.AddressAccessState;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AddressUiMapping.kt */
/* loaded from: classes4.dex */
public final class AddressUiMappingKt {
    public static final AddressAccessState mapToUI(AccountInfo.Address address, boolean z) {
        Intrinsics.checkNotNullParameter(address, "<this>");
        return (address.isAddressSet() && z) ? new AddressAccessState.Granted(address.getAddressValue()) : address.isAddressSet() ? AddressAccessState.Denied.INSTANCE : AddressAccessState.NotAvailable.INSTANCE;
    }
}
