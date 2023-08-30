package wallet.core.jni;
/* loaded from: classes4.dex */
public enum HRP {
    UNKNOWN(0),
    BITCOIN(1),
    LITECOIN(2),
    VIACOIN(3),
    GROESTLCOIN(4),
    DIGIBYTE(5),
    MONACOIN(6),
    COSMOS(7),
    BITCOINCASH(8),
    BITCOINGOLD(9),
    IOTEX(10),
    NERVOS(11),
    ZILLIQA(12),
    TERRA(13),
    CRYPTOORG(14),
    KAVA(15),
    OASIS(16),
    BLUZELLE(17),
    BANDCHAIN(18),
    MULTIVERSX(19),
    SECRET(20),
    AGORIC(21),
    BINANCE(22),
    ECASH(23),
    THORCHAIN(24),
    HARMONY(25),
    CARDANO(26),
    QTUM(27),
    NATIVEINJECTIVE(28),
    OSMOSIS(29),
    TERRAV2(30),
    NATIVEEVMOS(31);
    
    private final int value;

    HRP(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static HRP createFromValue(int value) {
        switch (value) {
            case 0:
                return UNKNOWN;
            case 1:
                return BITCOIN;
            case 2:
                return LITECOIN;
            case 3:
                return VIACOIN;
            case 4:
                return GROESTLCOIN;
            case 5:
                return DIGIBYTE;
            case 6:
                return MONACOIN;
            case 7:
                return COSMOS;
            case 8:
                return BITCOINCASH;
            case 9:
                return BITCOINGOLD;
            case 10:
                return IOTEX;
            case 11:
                return NERVOS;
            case 12:
                return ZILLIQA;
            case 13:
                return TERRA;
            case 14:
                return CRYPTOORG;
            case 15:
                return KAVA;
            case 16:
                return OASIS;
            case 17:
                return BLUZELLE;
            case 18:
                return BANDCHAIN;
            case 19:
                return MULTIVERSX;
            case 20:
                return SECRET;
            case 21:
                return AGORIC;
            case 22:
                return BINANCE;
            case 23:
                return ECASH;
            case 24:
                return THORCHAIN;
            case 25:
                return HARMONY;
            case 26:
                return CARDANO;
            case 27:
                return QTUM;
            case 28:
                return NATIVEINJECTIVE;
            case 29:
                return OSMOSIS;
            case 30:
                return TERRAV2;
            case 31:
                return NATIVEEVMOS;
            default:
                return null;
        }
    }

    /* renamed from: wallet.core.jni.HRP$1 */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C73971 {
        static final /* synthetic */ int[] $SwitchMap$wallet$core$jni$HRP;

        static {
            int[] iArr = new int[HRP.values().length];
            $SwitchMap$wallet$core$jni$HRP = iArr;
            try {
                iArr[HRP.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BITCOIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.LITECOIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.VIACOIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.GROESTLCOIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.DIGIBYTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.MONACOIN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.COSMOS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BITCOINCASH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BITCOINGOLD.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.IOTEX.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.NERVOS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.ZILLIQA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.TERRA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.CRYPTOORG.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.KAVA.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.OASIS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BLUZELLE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BANDCHAIN.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.MULTIVERSX.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.SECRET.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.AGORIC.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.BINANCE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.ECASH.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.THORCHAIN.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.HARMONY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.CARDANO.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.QTUM.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.NATIVEINJECTIVE.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.OSMOSIS.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.TERRAV2.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$wallet$core$jni$HRP[HRP.NATIVEEVMOS.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (C73971.$SwitchMap$wallet$core$jni$HRP[ordinal()]) {
            case 2:
                return "bc";
            case 3:
                return "ltc";
            case 4:
                return "via";
            case 5:
                return "grs";
            case 6:
                return "dgb";
            case 7:
                return "mona";
            case 8:
                return "cosmos";
            case 9:
                return "bitcoincash";
            case 10:
                return "btg";
            case 11:
                return "io";
            case 12:
                return "ckb";
            case 13:
                return "zil";
            case 14:
                return "terra";
            case 15:
                return "cro";
            case 16:
                return "kava";
            case 17:
                return "oasis";
            case 18:
                return "bluzelle";
            case 19:
                return "band";
            case 20:
                return "erd";
            case 21:
                return "secret";
            case 22:
                return "agoric";
            case 23:
                return "bnb";
            case 24:
                return "ecash";
            case 25:
                return "thor";
            case 26:
                return "one";
            case 27:
                return "addr";
            case 28:
                return "qc";
            case 29:
                return "inj";
            case 30:
                return "osmo";
            case 31:
                return "terra";
            case 32:
                return "evmos";
            default:
                return "";
        }
    }
}
