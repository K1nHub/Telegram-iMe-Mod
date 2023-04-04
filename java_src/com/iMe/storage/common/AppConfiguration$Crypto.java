package com.iMe.storage.common;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.provider.crypto.SmartContractProvider;
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
            try {
                iArr[NetworkType.ETHEREUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.POLYGON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.FANTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NetworkType.TRON.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[NetworkType.THE_OPEN_NETWORK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AppConfiguration$Crypto() {
    }

    public final String formatScanTxUrl(NetworkType networkType, String txHash) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        return getScanUrlByToken(networkType) + getScanTxUrlMainPart(networkType) + txHash;
    }

    public final String formatScanAddressUrl(NetworkType networkType, String address) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(address, "address");
        return getScanUrlByToken(networkType) + getScanAddressUrlMainPart(networkType) + address;
    }

    public static final String formatScanTokenUrlWithAddress(NetworkType networkType, TokenCode code, String address) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(address, "address");
        String contract = SmartContractProvider.INSTANCE.getContract(code, networkType);
        if (contract == null) {
            contract = "";
        }
        return formatScanTokenUrl(networkType, contract) + "?a=" + address;
    }

    public static final String formatScanTokenUrl(NetworkType networkType, String address) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(address, "address");
        StringBuilder sb = new StringBuilder();
        AppConfiguration$Crypto appConfiguration$Crypto = INSTANCE;
        sb.append(appConfiguration$Crypto.getScanUrlByToken(networkType));
        sb.append(appConfiguration$Crypto.getTokenUrlMainPart(networkType));
        sb.append(address);
        return sb.toString();
    }

    private final String getScanUrlByToken(NetworkType networkType) {
        switch (WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()]) {
            case 1:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getEtherScanUrl();
            case 2:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getBscScanUrl();
            case 3:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getPolygonScanUrl();
            case 4:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getFantomScanUrl();
            case 5:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getTronScanUrl();
            case 6:
                return EnvironmentManager.INSTANCE.getEnvironmentInformation().getTonScanUrl();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final String getScanAddressUrlMainPart(NetworkType networkType) {
        return WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] == 5 ? "#/address/" : "address/";
    }

    private final String getScanTxUrlMainPart(NetworkType networkType) {
        return WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] == 5 ? "#/transaction/" : "tx/";
    }

    private final String getTokenUrlMainPart(NetworkType networkType) {
        return WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] == 5 ? "#/token20/" : "token/";
    }
}
