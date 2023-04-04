package p035j$.time.format;

import p035j$.time.temporal.InterfaceC2612j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2595n implements InterfaceC2588g {

    /* renamed from: a */
    private final InterfaceC2612j f514a;

    /* renamed from: b */
    private final EnumC2602u f515b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2595n(InterfaceC2612j interfaceC2612j, EnumC2602u enumC2602u, C2584c c2584c) {
        this.f514a = interfaceC2612j;
        this.f515b = enumC2602u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f515b == EnumC2602u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f514a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f514a);
            sb.append(",");
            obj = this.f515b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
