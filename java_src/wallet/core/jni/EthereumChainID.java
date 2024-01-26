package wallet.core.jni;
/* loaded from: classes5.dex */
public enum EthereumChainID {
    ETHEREUM(1),
    CLASSIC(61),
    POA(99),
    VECHAIN(74),
    CALLISTO(820),
    TOMOCHAIN(88),
    POLYGON(137),
    OKC(66),
    THUNDERTOKEN(108),
    GOCHAIN(60),
    METER(82),
    CELO(42220),
    WANCHAIN(888),
    CRONOS(25),
    OPTIMISM(10),
    XDAI(100),
    SMARTBCH(10000),
    FANTOM(250),
    BOBA(288),
    KCC(321),
    ZKSYNC(324),
    HECO(128),
    METIS(1088),
    MOONBEAM(1284),
    MOONRIVER(1285),
    POLYGONZKEVM(1422),
    RONIN(2020),
    KAVAEVM(2222),
    KLAYTN(8217),
    AVALANCHEC(43114),
    EVMOS(9001),
    ARBITRUM(42161),
    SMARTCHAIN(56),
    AURORA(1313161554);
    
    private final int value;

    EthereumChainID(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static EthereumChainID createFromValue(int value) {
        switch (value) {
            case 1:
                return ETHEREUM;
            case 10:
                return OPTIMISM;
            case 25:
                return CRONOS;
            case 56:
                return SMARTCHAIN;
            case 60:
                return GOCHAIN;
            case 61:
                return CLASSIC;
            case 66:
                return OKC;
            case 74:
                return VECHAIN;
            case 82:
                return METER;
            case 88:
                return TOMOCHAIN;
            case 99:
                return POA;
            case 100:
                return XDAI;
            case 108:
                return THUNDERTOKEN;
            case 128:
                return HECO;
            case 137:
                return POLYGON;
            case 250:
                return FANTOM;
            case 288:
                return BOBA;
            case 321:
                return KCC;
            case 324:
                return ZKSYNC;
            case 820:
                return CALLISTO;
            case 888:
                return WANCHAIN;
            case 1088:
                return METIS;
            case 1284:
                return MOONBEAM;
            case 1285:
                return MOONRIVER;
            case 1422:
                return POLYGONZKEVM;
            case 2020:
                return RONIN;
            case 2222:
                return KAVAEVM;
            case 8217:
                return KLAYTN;
            case 9001:
                return EVMOS;
            case 10000:
                return SMARTBCH;
            case 42161:
                return ARBITRUM;
            case 42220:
                return CELO;
            case 43114:
                return AVALANCHEC;
            case 1313161554:
                return AURORA;
            default:
                return null;
        }
    }
}
