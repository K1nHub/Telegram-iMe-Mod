package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2638j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2621n implements InterfaceC2614g {

    /* renamed from: a */
    private final InterfaceC2638j f512a;

    /* renamed from: b */
    private final EnumC2628u f513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2621n(InterfaceC2638j interfaceC2638j, EnumC2628u enumC2628u, C2610c c2610c) {
        this.f512a = interfaceC2638j;
        this.f513b = enumC2628u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f513b == EnumC2628u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f512a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f512a);
            sb.append(",");
            obj = this.f513b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
