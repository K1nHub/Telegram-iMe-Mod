package com.iMe.storage.domain.utils.crypto;

import java.math.BigDecimal;
/* loaded from: classes4.dex */
public final class Convert {
    public static BigDecimal fromWei(String number, Unit unit) {
        return fromWei(new BigDecimal(number), unit);
    }

    public static BigDecimal fromWei(BigDecimal number, Unit unit) {
        return number.divide(unit.getWeiFactor());
    }

    /* loaded from: classes4.dex */
    public enum Unit {
        WEI("wei", 0),
        KWEI("kwei", 3),
        MWEI("mwei", 6),
        WEI8("wei8", 8),
        GWEI("gwei", 9),
        SZABO("szabo", 12),
        FINNEY("finney", 15),
        ETHER("ether", 18),
        KETHER("kether", 21),
        METHER("mether", 24),
        GETHER("gether", 27);
        
        private final int factor;
        private final String name;
        private final BigDecimal weiFactor;

        Unit(String name, int factor) {
            this.name = name;
            this.factor = factor;
            this.weiFactor = BigDecimal.TEN.pow(factor);
        }

        public static Unit fromString(String name) {
            Unit[] values;
            if (name != null) {
                for (Unit unit : values()) {
                    if (name.equalsIgnoreCase(unit.name)) {
                        return unit;
                    }
                }
            }
            return valueOf(name);
        }

        public BigDecimal getWeiFactor() {
            return this.weiFactor;
        }

        public int getFactor() {
            return this.factor;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }
}
