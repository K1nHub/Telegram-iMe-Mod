package com.iMe.storage.domain.model.wallet.transaction;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum OUT uses external variables
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
/* compiled from: TransactionDirection.kt */
/* loaded from: classes3.dex */
public final class TransactionDirection {
    private static final /* synthetic */ TransactionDirection[] $VALUES;
    public static final Companion Companion;

    /* renamed from: IN */
    public static final TransactionDirection f392IN = new TransactionDirection("IN", 0, "+", R$string.transaction_direction_in_title);
    public static final TransactionDirection OUT;
    public static final TransactionDirection SELF;
    private final String symbol;
    private int title;

    private static final /* synthetic */ TransactionDirection[] $values() {
        return new TransactionDirection[]{f392IN, OUT, SELF};
    }

    public static TransactionDirection valueOf(String str) {
        return (TransactionDirection) Enum.valueOf(TransactionDirection.class, str);
    }

    public static TransactionDirection[] values() {
        return (TransactionDirection[]) $VALUES.clone();
    }

    private TransactionDirection(String str, int i, String str2, int i2) {
        this.symbol = str2;
        this.title = i2;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setTitle(int i) {
        this.title = i;
    }

    static {
        int i = R$string.transaction_direction_out_title;
        OUT = new TransactionDirection("OUT", 1, "-", i);
        SELF = new TransactionDirection("SELF", 2, "-", i);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: TransactionDirection.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionDirection map(String value) {
            TransactionDirection transactionDirection;
            Intrinsics.checkNotNullParameter(value, "value");
            TransactionDirection[] values = TransactionDirection.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    transactionDirection = null;
                    break;
                }
                transactionDirection = values[i];
                if (Intrinsics.areEqual(transactionDirection.name(), value)) {
                    break;
                }
                i++;
            }
            return transactionDirection == null ? TransactionDirection.f392IN : transactionDirection;
        }
    }
}
