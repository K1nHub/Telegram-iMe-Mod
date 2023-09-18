package com.iMe.model.wallet.swap;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CexProtocolItem.kt */
/* loaded from: classes4.dex */
public final class CexProtocolItem extends NoChildNode {
    private final CentralizedExchangesInfo info;
    private final boolean isEnabled;

    public static /* synthetic */ CexProtocolItem copy$default(CexProtocolItem cexProtocolItem, CentralizedExchangesInfo centralizedExchangesInfo, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            centralizedExchangesInfo = cexProtocolItem.info;
        }
        if ((i & 2) != 0) {
            z = cexProtocolItem.isEnabled;
        }
        return cexProtocolItem.copy(centralizedExchangesInfo, z);
    }

    public final CentralizedExchangesInfo component1() {
        return this.info;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final CexProtocolItem copy(CentralizedExchangesInfo info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        return new CexProtocolItem(info, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CexProtocolItem) {
            CexProtocolItem cexProtocolItem = (CexProtocolItem) obj;
            return Intrinsics.areEqual(this.info, cexProtocolItem.info) && this.isEnabled == cexProtocolItem.isEnabled;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.info.hashCode() * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "CexProtocolItem(info=" + this.info + ", isEnabled=" + this.isEnabled + ')';
    }

    public final CentralizedExchangesInfo getInfo() {
        return this.info;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public CexProtocolItem(CentralizedExchangesInfo info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
        this.isEnabled = z;
    }
}
