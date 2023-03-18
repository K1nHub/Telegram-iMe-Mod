package p034j$.time.format;

import java.util.Objects;
import p034j$.time.temporal.InterfaceC2522j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2499h implements InterfaceC2498g {

    /* renamed from: a */
    private final InterfaceC2522j f493a;

    /* renamed from: b */
    private final int f494b;

    /* renamed from: c */
    private final int f495c;

    /* renamed from: d */
    private final boolean f496d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2499h(InterfaceC2522j interfaceC2522j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2522j, "field");
        if (!interfaceC2522j.mo655a().m653b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2522j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f493a = interfaceC2522j;
            this.f494b = i;
            this.f495c = i2;
            this.f496d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f496d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f493a + "," + this.f494b + "," + this.f495c + str + ")";
    }
}
