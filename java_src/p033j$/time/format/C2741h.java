package p033j$.time.format;

import java.util.Objects;
import p033j$.time.temporal.InterfaceC2764j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2741h implements InterfaceC2740g {

    /* renamed from: a */
    private final InterfaceC2764j f579a;

    /* renamed from: b */
    private final int f580b;

    /* renamed from: c */
    private final int f581c;

    /* renamed from: d */
    private final boolean f582d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2741h(InterfaceC2764j interfaceC2764j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2764j, "field");
        if (!interfaceC2764j.mo640a().m638b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2764j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f579a = interfaceC2764j;
            this.f580b = i;
            this.f581c = i2;
            this.f582d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f582d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f579a + "," + this.f580b + "," + this.f581c + str + ")";
    }
}
