package p035j$.time.format;

import java.util.Objects;
import p035j$.time.temporal.InterfaceC2612j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2589h implements InterfaceC2588g {

    /* renamed from: a */
    private final InterfaceC2612j f499a;

    /* renamed from: b */
    private final int f500b;

    /* renamed from: c */
    private final int f501c;

    /* renamed from: d */
    private final boolean f502d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2589h(InterfaceC2612j interfaceC2612j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2612j, "field");
        if (!interfaceC2612j.mo649a().m647b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2612j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f499a = interfaceC2612j;
            this.f500b = i;
            this.f501c = i2;
            this.f502d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f502d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f499a + "," + this.f500b + "," + this.f501c + str + ")";
    }
}
