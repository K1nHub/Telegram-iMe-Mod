package com.smedialink.storage.common;

import com.smedialink.storage.data.manager.common.EnvironmentManager;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.provider.crypto.SmartContractProvider;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Crypto {
    public static final AppConfiguration$Crypto INSTANCE = new AppConfiguration$Crypto();

    /* compiled from: AppConfiguration.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            iArr[NetworkType.ETHEREUM.ordinal()] = 1;
            iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
            iArr[NetworkType.POLYGON.ordinal()] = 3;
            iArr[NetworkType.FANTOM.ordinal()] = 4;
            iArr[NetworkType.THE_OPEN_NETWORK.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AppConfiguration$Crypto() {
    }

    public final String getScanUrlByToken(NetworkType network) {
        Intrinsics.checkNotNullParameter(network, "network");
        int i = WhenMappings.$EnumSwitchMapping$0[network.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return EnvironmentManager.INSTANCE.getEnvironmentInformation().getTonScanUrl();
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return EnvironmentManager.INSTANCE.getEnvironmentInformation().getFantomScanUrl();
                }
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getPolygonScanUrl();
            }
            return EnvironmentManager.INSTANCE.getEnvironmentInformation().getBscScanUrl();
        }
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getEtherScanUrl();
    }

    public final String formatScanTxUrl(NetworkType network, String tx) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(tx, "tx");
        return getScanUrlByToken(network) + "tx/" + tx;
    }

    public final String formatScanAddressUrl(NetworkType network, String address) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(address, "address");
        return getScanUrlByToken(network) + "address/" + address;
    }

    public static final String formatScanTokenUrlWithAddress(NetworkType network, TokenCode code, String address) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(address, "address");
        String contract = SmartContractProvider.INSTANCE.getContract(code, network);
        if (contract == null) {
            contract = "";
        }
        return formatScanTokenUrl(network, contract) + "?a=" + address;
    }

    public static final String formatScanTokenUrl(NetworkType network, String address) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(address, "address");
        return INSTANCE.getScanUrlByToken(network) + "token/" + address;
    }
}
