package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2764j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2747n implements InterfaceC2740g {

    /* renamed from: a */
    private final InterfaceC2764j f594a;

    /* renamed from: b */
    private final EnumC2754u f595b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2747n(InterfaceC2764j interfaceC2764j, EnumC2754u enumC2754u, C2736c c2736c) {
        this.f594a = interfaceC2764j;
        this.f595b = enumC2754u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f595b == EnumC2754u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f594a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f594a);
            sb.append(",");
            obj = this.f595b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
