package com.iMe.storage.domain.model.binancepay;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum INITIAL uses external variables
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
/* compiled from: BinanceTransactionStatus.kt */
/* loaded from: classes4.dex */
public final class BinanceTransactionStatus {
    private static final /* synthetic */ BinanceTransactionStatus[] $VALUES;
    public static final Companion Companion;
    public static final BinanceTransactionStatus INITIAL;
    public static final BinanceTransactionStatus PAID;
    public static final BinanceTransactionStatus PENDING;
    private final int title;

    private static final /* synthetic */ BinanceTransactionStatus[] $values() {
        return new BinanceTransactionStatus[]{INITIAL, PENDING, PAID};
    }

    public static BinanceTransactionStatus valueOf(String str) {
        return (BinanceTransactionStatus) Enum.valueOf(BinanceTransactionStatus.class, str);
    }

    public static BinanceTransactionStatus[] values() {
        return (BinanceTransactionStatus[]) $VALUES.clone();
    }

    private BinanceTransactionStatus(String str, int i, int i2) {
        this.title = i2;
    }

    public final int getTitle() {
        return this.title;
    }

    static {
        int i = R$string.status_pending;
        INITIAL = new BinanceTransactionStatus("INITIAL", 0, i);
        PENDING = new BinanceTransactionStatus("PENDING", 1, i);
        PAID = new BinanceTransactionStatus("PAID", 2, R$string.status_ok);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: BinanceTransactionStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinanceTransactionStatus map(String value) {
            BinanceTransactionStatus binanceTransactionStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            BinanceTransactionStatus[] values = BinanceTransactionStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    binanceTransactionStatus = null;
                    break;
                }
                binanceTransactionStatus = values[i];
                if (Intrinsics.areEqual(binanceTransactionStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return binanceTransactionStatus == null ? BinanceTransactionStatus.INITIAL : binanceTransactionStatus;
        }
    }
}
