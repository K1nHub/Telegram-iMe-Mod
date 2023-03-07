package com.smedialink.model.wallet.crypto;

import com.smedialink.storage.domain.model.crypto.BlockchainType;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainAdressData.kt */
/* loaded from: classes3.dex */
public enum BlockchainAddressData {
    EVM("0x[a-fA-F0-9]{40}", "ethereum:"),
    TON("[a-zA-Z0-9-_]{48}", "ton://transfer/");
    
    public static final Companion Companion = new Companion(null);
    private final String prefix;
    private final String regex;

    BlockchainAddressData(String str, String str2) {
        this.regex = str;
        this.prefix = str2;
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
                iArr[BlockchainType.EVM.ordinal()] = 1;
                iArr[BlockchainType.TON.ordinal()] = 2;
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
                if (i == 2) {
                    return BlockchainAddressData.TON;
                }
                throw new NoWhenBranchMatchedException();
            }
            return BlockchainAddressData.EVM;
        }
    }
}
