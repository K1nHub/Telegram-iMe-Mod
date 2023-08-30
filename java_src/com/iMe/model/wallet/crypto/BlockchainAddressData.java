package com.iMe.model.wallet.crypto;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainAdressData.kt */
/* loaded from: classes3.dex */
public enum BlockchainAddressData {
    EVM("0x[a-fA-F0-9]{40}", "ethereum:"),
    TON("[a-zA-Z0-9-_]{48}", "ton://transfer/"),
    TRON("T[a-zA-Z0-9]{33}", null, 2, null),
    BTC_MAIN("(?:[13]{1}[a-km-zA-HJ-NP-Z1-9]{25,34}|bc1[a-z0-9]{39,59})", "bitcoin:"),
    BTC_TEST("tb1[a-z0-9]{39}", "bitcoin:");
    
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
                try {
                    iArr[BlockchainType.BITCOIN.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
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
                    if (i != 3) {
                        if (i == 4) {
                            return EnvironmentManager.INSTANCE.isProductionActive() ? BlockchainAddressData.BTC_MAIN : BlockchainAddressData.BTC_TEST;
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return BlockchainAddressData.TRON;
                }
                return BlockchainAddressData.TON;
            }
            return BlockchainAddressData.EVM;
        }
    }
}
