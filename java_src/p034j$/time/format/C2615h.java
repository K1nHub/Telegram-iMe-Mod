package p034j$.time.format;

import java.util.Objects;
import p034j$.time.temporal.InterfaceC2638j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2615h implements InterfaceC2614g {

    /* renamed from: a */
    private final InterfaceC2638j f497a;

    /* renamed from: b */
    private final int f498b;

    /* renamed from: c */
    private final int f499c;

    /* renamed from: d */
    private final boolean f500d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2615h(InterfaceC2638j interfaceC2638j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2638j, "field");
        if (!interfaceC2638j.mo640a().m638b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2638j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f497a = interfaceC2638j;
            this.f498b = i;
            this.f499c = i2;
            this.f500d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f500d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f497a + "," + this.f498b + "," + this.f499c + str + ")";
    }
}
