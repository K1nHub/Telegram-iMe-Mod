package p033j$.time.format;

import java.util.Objects;
import p033j$.time.temporal.InterfaceC2903j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.h */
/* loaded from: classes2.dex */
public final class C2880h implements InterfaceC2879g {

    /* renamed from: a */
    private final InterfaceC2903j f592a;

    /* renamed from: b */
    private final int f593b;

    /* renamed from: c */
    private final int f594c;

    /* renamed from: d */
    private final boolean f595d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2880h(InterfaceC2903j interfaceC2903j, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2903j, "field");
        if (!interfaceC2903j.mo658a().m656b()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2903j);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f592a = interfaceC2903j;
            this.f593b = i;
            this.f594c = i2;
            this.f595d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public String toString() {
        String str = this.f595d ? ",DecimalPoint" : "";
        return "Fraction(" + this.f592a + "," + this.f593b + "," + this.f594c + str + ")";
    }
}
