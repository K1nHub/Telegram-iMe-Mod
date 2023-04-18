package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2599j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2582n implements InterfaceC2575g {

    /* renamed from: a */
    private final InterfaceC2599j f509a;

    /* renamed from: b */
    private final EnumC2589u f510b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2582n(InterfaceC2599j interfaceC2599j, EnumC2589u enumC2589u, C2571c c2571c) {
        this.f509a = interfaceC2599j;
        this.f510b = enumC2589u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f510b == EnumC2589u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f509a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f509a);
            sb.append(",");
            obj = this.f510b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
