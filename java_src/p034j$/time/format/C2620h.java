package p034j$.time.format;

import java.util.Objects;
import p034j$.time.temporal.InterfaceC2643j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2620h implements InterfaceC2619g {

    /* renamed from: a */
    private final InterfaceC2643j f497a;

    /* renamed from: b */
    private final int f498b;

    /* renamed from: c */
    private final int f499c;

    /* renamed from: d */
    private final boolean f500d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2620h(InterfaceC2643j interfaceC2643j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2643j, "field");
        if (!interfaceC2643j.mo640a().m638b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2643j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f497a = interfaceC2643j;
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
