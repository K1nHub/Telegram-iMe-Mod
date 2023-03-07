package p034j$.time.format;

import java.util.Objects;
import p034j$.time.temporal.InterfaceC2398j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2375h implements InterfaceC2374g {

    /* renamed from: a */
    private final InterfaceC2398j f488a;

    /* renamed from: b */
    private final int f489b;

    /* renamed from: c */
    private final int f490c;

    /* renamed from: d */
    private final boolean f491d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2375h(InterfaceC2398j interfaceC2398j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2398j, "field");
        if (!interfaceC2398j.mo655a().m653b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2398j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f488a = interfaceC2398j;
            this.f489b = i;
            this.f490c = i2;
            this.f491d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f491d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f488a + "," + this.f489b + "," + this.f490c + str + ")";
    }
}
