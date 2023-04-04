package com.iMe.model.wallet.crypto;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainAdressData.kt */
/* loaded from: classes3.dex */
public enum BlockchainAddressData {
    EVM("0x[a-fA-F0-9]{40}", "ethereum:"),
    TON("[a-zA-Z0-9-_]{48}", "ton://transfer/"),
    TRON("T[a-zA-Z0-9]{33}", null, 2, null);
    
    public static final Companion Companion = new Companion(null);
    private final String prefix;
    private final String regex;

    BlockchainAddressData(String str, String str2) {
        this.regex = str;
        this.prefix = str2;
    }

    /* synthetic */ BlockchainAddressData(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2);
    }

    public final String getRegex() {
        return this.regex;
    }

    public final String getPrefix() {
        return this.prefix;
    }

    /* compiled from: BlockchainAdressData.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* compiled from: BlockchainAdressData.kt */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[BlockchainType.values().length];
                try {
                    iArr[BlockchainType.EVM.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[BlockchainType.TON.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[BlockchainType.TRON.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BlockchainAddressData mapByBlockchainType(BlockchainType blockchainType) {
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return BlockchainAddressData.TRON;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return BlockchainAddressData.TON;
            }
            return BlockchainAddressData.EVM;
        }
    }
}
