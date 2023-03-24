package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2536j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2519n implements InterfaceC2512g {

    /* renamed from: a */
    private final InterfaceC2536j f509a;

    /* renamed from: b */
    private final EnumC2526u f510b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2519n(InterfaceC2536j interfaceC2536j, EnumC2526u enumC2526u, C2508c c2508c) {
        this.f509a = interfaceC2536j;
        this.f510b = enumC2526u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f510b == EnumC2526u.FULL) {
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
