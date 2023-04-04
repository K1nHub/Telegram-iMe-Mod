package com.iMe.storage.domain.model.crypto;

import com.iMe.storage.R$color;
import com.iMe.storage.R$drawable;
import com.iMe.storage.R$string;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.common.EnvironmentInformation;
import com.iMe.storage.domain.model.crypto.Chain;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum BINANCE_SMART_CHAIN uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: NetworkType.kt */
/* loaded from: classes3.dex */
public final class NetworkType {
    private static final /* synthetic */ NetworkType[] $VALUES;
    public static final NetworkType BINANCE_SMART_CHAIN;
    public static final Companion Companion;
    public static final NetworkType ETHEREUM;
    public static final NetworkType FANTOM;
    public static final NetworkType POLYGON;
    public static final NetworkType THE_OPEN_NETWORK;
    public static final NetworkType TRON;
    private final int backgroundColor;
    private final BlockchainType blockchainType;
    private final int logo;
    private final TokenCode nativeToken;
    private final int scannerIcon;
    private final int scannerName;
    private final int shortName;
    private final int smallIcon;
    private final int textColor;
    private final int titleResId;

    /* compiled from: NetworkType.kt */
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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ NetworkType[] $values() {
        return new NetworkType[]{BINANCE_SMART_CHAIN, ETHEREUM, POLYGON, FANTOM, TRON, THE_OPEN_NETWORK};
    }

    public static final NetworkType map(String str) {
        return Companion.map(str);
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) $VALUES.clone();
    }

    private NetworkType(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, TokenCode tokenCode, BlockchainType blockchainType) {
        this.logo = i2;
        this.smallIcon = i3;
        this.titleResId = i4;
        this.shortName = i5;
        this.scannerName = i6;
        this.scannerIcon = i7;
        this.backgroundColor = i8;
        this.textColor = i9;
        this.nativeToken = tokenCode;
        this.blockchainType = blockchainType;
    }

    public final int getLogo() {
        return this.logo;
    }

    public final int getSmallIcon() {
        return this.smallIcon;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getShortName() {
        return this.shortName;
    }

    public final int getScannerName() {
        return this.scannerName;
    }

    public final int getScannerIcon() {
        return this.scannerIcon;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final TokenCode getNativeToken() {
        return this.nativeToken;
    }

    public final BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    static {
        int i = R$drawable.fork_ic_bnb_logo;
        int i2 = R$drawable.fork_ic_bnp_small_logo;
        int i3 = R$string.wallet_network_type_bep20;
        int i4 = R$string.wallet_network_type_bsc_short_name;
        int i5 = R$string.wallet_network_scanner_bsc;
        int i6 = R$drawable.fork_ic_etherscan;
        int i7 = R$color.wallet_network_type_bep20;
        TokenCode tokenCode = TokenCode.BNB;
        BlockchainType blockchainType = BlockchainType.EVM;
        BINANCE_SMART_CHAIN = new NetworkType("BINANCE_SMART_CHAIN", 0, i, i2, i3, i4, i5, i6, i7, 17170443, tokenCode, blockchainType);
        ETHEREUM = new NetworkType("ETHEREUM", 1, R$drawable.fork_ic_eth_logo, R$drawable.fork_ic_erc_small_logo, R$string.wallet_network_type_erc20, R$string.wallet_network_type_eth_short_name, R$string.wallet_network_scanner_eth, i6, R$color.wallet_network_type_erc20, 17170443, TokenCode.ETHER, blockchainType);
        POLYGON = new NetworkType("POLYGON", 2, R$drawable.fork_ic_polygon_logo, R$drawable.fork_ic_polygon_small_logo, R$string.wallet_network_type_polygon, R$string.wallet_network_type_polygon_short_name, R$string.wallet_network_scanner_polygon, R$drawable.fork_ic_polygon_26, R$color.wallet_network_type_polygon, 17170443, TokenCode.MATIC, blockchainType);
        FANTOM = new NetworkType("FANTOM", 3, R$drawable.fork_ic_fantom_logo, R$drawable.fork_ic_fantom_small_logo, R$string.wallet_network_type_fantom, R$string.wallet_network_type_fantom_short_name, R$string.wallet_network_scanner_fantom, R$drawable.fork_ic_ftmscan, R$color.wallet_network_type_fantom, 17170443, TokenCode.FTM, blockchainType);
        TRON = new NetworkType("TRON", 4, R$drawable.fork_ic_tron_logo, R$drawable.fork_ic_tron_small_logo, R$string.wallet_network_type_tron, R$string.wallet_network_type_tron_short_name, R$string.wallet_network_scanner_tron, R$drawable.fork_ic_tronscan, R$color.wallet_network_type_tron, 17170443, TokenCode.TRX, BlockchainType.TRON);
        THE_OPEN_NETWORK = new NetworkType("THE_OPEN_NETWORK", 5, R$drawable.fork_ic_ton_logo, R$drawable.fork_ic_ton_small_logo, R$string.wallet_network_type_ton, R$string.wallet_network_type_ton_short_name, R$string.wallet_network_scanner_ton, R$drawable.fork_ic_tonscan, R$color.wallet_network_type_ton, 17170443, TokenCode.TON, BlockchainType.TON);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    public final boolean isEthereum() {
        return this == ETHEREUM;
    }

    public final boolean isBSC() {
        return this == BINANCE_SMART_CHAIN;
    }

    public final boolean isPolygon() {
        return this == POLYGON;
    }

    public final boolean isEVM() {
        return this.blockchainType == BlockchainType.EVM;
    }

    public final long getChainId() {
        Chain chain;
        boolean z = EnvironmentManager.INSTANCE.getEnvironmentInformation() instanceof EnvironmentInformation.Production;
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        chain = new Chain.Unknown(0L, 1, null);
                    } else if (z) {
                        chain = Chain.Fantom.Main.INSTANCE;
                    } else {
                        chain = Chain.Fantom.Testnet.INSTANCE;
                    }
                } else if (z) {
                    chain = Chain.Polygon.Main.INSTANCE;
                } else {
                    chain = Chain.Polygon.Testnet.INSTANCE;
                }
            } else if (z) {
                chain = Chain.BSC.Main.INSTANCE;
            } else {
                chain = Chain.BSC.Testnet.INSTANCE;
            }
        } else if (z) {
            chain = Chain.Ethereum.Main.INSTANCE;
        } else {
            chain = Chain.Ethereum.Ropsten.INSTANCE;
        }
        return chain.getId();
    }

    /* compiled from: NetworkType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NetworkType map(String type) {
            NetworkType networkType;
            Intrinsics.checkNotNullParameter(type, "type");
            NetworkType[] values = NetworkType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    networkType = null;
                    break;
                }
                networkType = values[i];
                if (Intrinsics.areEqual(networkType.name(), type)) {
                    break;
                }
                i++;
            }
            return networkType == null ? NetworkType.BINANCE_SMART_CHAIN : networkType;
        }

        public final List<NetworkType> getAvailableNetworks() {
            List<NetworkType> list;
            list = ArraysKt___ArraysKt.toList(NetworkType.values());
            return list;
        }

        public final List<NetworkType> getNetworksByBlockchain(BlockchainType blockchainType) {
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            NetworkType[] values = NetworkType.values();
            ArrayList arrayList = new ArrayList();
            for (NetworkType networkType : values) {
                if (networkType.getBlockchainType() == blockchainType) {
                    arrayList.add(networkType);
                }
            }
            return arrayList;
        }

        public final List<NetworkType> getNetworksByBlockchains(List<? extends BlockchainType> blockchainTypes) {
            Intrinsics.checkNotNullParameter(blockchainTypes, "blockchainTypes");
            NetworkType[] values = NetworkType.values();
            ArrayList arrayList = new ArrayList();
            for (NetworkType networkType : values) {
                if (blockchainTypes.contains(networkType.getBlockchainType())) {
                    arrayList.add(networkType);
                }
            }
            return arrayList;
        }

        public final List<NetworkType> getEVMNetworks() {
            NetworkType[] values = NetworkType.values();
            ArrayList arrayList = new ArrayList();
            for (NetworkType networkType : values) {
                if (networkType.isEVM()) {
                    arrayList.add(networkType);
                }
            }
            return arrayList;
        }

        public final NetworkType fromChainId(long j) {
            Chain chainById = Chain.Companion.getChainById(j);
            if (chainById instanceof Chain.Ethereum.Main ? true : chainById instanceof Chain.Ethereum.Ropsten) {
                return NetworkType.ETHEREUM;
            }
            if (chainById instanceof Chain.BSC.Main ? true : chainById instanceof Chain.BSC.Testnet) {
                return NetworkType.BINANCE_SMART_CHAIN;
            }
            if (chainById instanceof Chain.Polygon.Main ? true : chainById instanceof Chain.Polygon.Testnet) {
                return NetworkType.POLYGON;
            }
            return chainById instanceof Chain.Fantom.Main ? true : chainById instanceof Chain.Fantom.Testnet ? NetworkType.FANTOM : NetworkType.ETHEREUM;
        }
    }
}
