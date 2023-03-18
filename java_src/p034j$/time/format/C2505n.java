package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2522j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2505n implements InterfaceC2498g {

    /* renamed from: a */
    private final InterfaceC2522j f508a;

    /* renamed from: b */
    private final EnumC2512u f509b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2505n(InterfaceC2522j interfaceC2522j, EnumC2512u enumC2512u, C2494c c2494c) {
        this.f508a = interfaceC2522j;
        this.f509b = enumC2512u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f509b == EnumC2512u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f508a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f508a);
            sb.append(",");
            obj = this.f509b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
