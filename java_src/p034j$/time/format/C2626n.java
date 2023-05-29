package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2643j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2626n implements InterfaceC2619g {

    /* renamed from: a */
    private final InterfaceC2643j f512a;

    /* renamed from: b */
    private final EnumC2633u f513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2626n(InterfaceC2643j interfaceC2643j, EnumC2633u enumC2633u, C2615c c2615c) {
        this.f512a = interfaceC2643j;
        this.f513b = enumC2633u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f513b == EnumC2633u.FULL) {
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
