package p033j$.time.format;

import java.util.Objects;
import p033j$.time.temporal.InterfaceC2819j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2796h implements InterfaceC2795g {

    /* renamed from: a */
    private final InterfaceC2819j f583a;

    /* renamed from: b */
    private final int f584b;

    /* renamed from: c */
    private final int f585c;

    /* renamed from: d */
    private final boolean f586d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2796h(InterfaceC2819j interfaceC2819j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2819j, "field");
        if (!interfaceC2819j.mo658a().m656b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2819j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f583a = interfaceC2819j;
            this.f584b = i;
            this.f585c = i2;
            this.f586d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f586d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f583a + "," + this.f584b + "," + this.f585c + str + ")";
    }
}
