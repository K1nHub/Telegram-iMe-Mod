package p034j$.time.format;

import java.util.Objects;
import p034j$.time.temporal.InterfaceC2536j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2513h implements InterfaceC2512g {

    /* renamed from: a */
    private final InterfaceC2536j f494a;

    /* renamed from: b */
    private final int f495b;

    /* renamed from: c */
    private final int f496c;

    /* renamed from: d */
    private final boolean f497d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2513h(InterfaceC2536j interfaceC2536j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2536j, "field");
        if (!interfaceC2536j.mo654a().m652b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2536j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f494a = interfaceC2536j;
            this.f495b = i;
            this.f496c = i2;
            this.f497d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f497d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f494a + "," + this.f495b + "," + this.f496c + str + ")";
    }
}
