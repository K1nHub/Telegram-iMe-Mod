package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2819j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2802n implements InterfaceC2795g {

    /* renamed from: a */
    private final InterfaceC2819j f598a;

    /* renamed from: b */
    private final EnumC2809u f599b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2802n(InterfaceC2819j interfaceC2819j, EnumC2809u enumC2809u, C2791c c2791c) {
        this.f598a = interfaceC2819j;
        this.f599b = enumC2809u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f599b == EnumC2809u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f598a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f598a);
            sb.append(",");
            obj = this.f599b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
