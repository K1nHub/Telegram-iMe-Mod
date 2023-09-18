package com.trustwallet.walletconnect.models.ethereum;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCEthereumSignMessage.kt */
/* loaded from: classes6.dex */
public final class WCEthereumSignMessage {
    private final List<String> raw;
    private final WCSignType type;

    /* compiled from: WCEthereumSignMessage.kt */
    /* loaded from: classes6.dex */
    public enum WCSignType {
        MESSAGE,
        PERSONAL_MESSAGE,
        TYPED_MESSAGE
    }

    /* compiled from: WCEthereumSignMessage.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCSignType.values().length];
            iArr[WCSignType.MESSAGE.ordinal()] = 1;
            iArr[WCSignType.TYPED_MESSAGE.ordinal()] = 2;
            iArr[WCSignType.PERSONAL_MESSAGE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCEthereumSignMessage) {
            WCEthereumSignMessage wCEthereumSignMessage = (WCEthereumSignMessage) obj;
            return Intrinsics.areEqual(this.raw, wCEthereumSignMessage.raw) && this.type == wCEthereumSignMessage.type;
        }
        return false;
    }

    public int hashCode() {
        return (this.raw.hashCode() * 31) + this.type.hashCode();
    }

    public String toString() {
        return "WCEthereumSignMessage(raw=" + this.raw + ", type=" + this.type + ')';
    }

    public WCEthereumSignMessage(List<String> raw, WCSignType type) {
        Intrinsics.checkNotNullParameter(raw, "raw");
        Intrinsics.checkNotNullParameter(type, "type");
        this.raw = raw;
        this.type = type;
    }

    public final WCSignType getType() {
        return this.type;
    }

    public final String getData() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return this.raw.get(0);
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.raw.get(1);
        }
        return this.raw.get(1);
    }
}
