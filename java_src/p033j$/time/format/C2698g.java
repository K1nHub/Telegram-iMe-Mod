package p033j$.time.format;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.g */
/* loaded from: classes2.dex */
public final class C2698g implements InterfaceC2699h {

    /* renamed from: a */
    private final InterfaceC2699h[] f530a;

    /* renamed from: b */
    private final boolean f531b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2698g(List list, boolean z) {
        this.f530a = (InterfaceC2699h[]) list.toArray(new InterfaceC2699h[list.size()]);
        this.f531b = z;
    }

    C2698g(InterfaceC2699h[] interfaceC2699hArr, boolean z) {
        this.f530a = interfaceC2699hArr;
        this.f531b = z;
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: a */
    public boolean mo883a(C2713v c2713v, StringBuilder sb) {
        int length = sb.length();
        if (this.f531b) {
            c2713v.m834g();
        }
        try {
            for (InterfaceC2699h interfaceC2699h : this.f530a) {
                if (!interfaceC2699h.mo883a(c2713v, sb)) {
                    sb.setLength(length);
                    return true;
                }
            }
            if (this.f531b) {
                c2713v.m840a();
            }
            return true;
        } finally {
            if (this.f531b) {
                c2713v.m840a();
            }
        }
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: b */
    public int mo882b(C2711t c2711t, CharSequence charSequence, int i) {
        if (!this.f531b) {
            for (InterfaceC2699h interfaceC2699h : this.f530a) {
                i = interfaceC2699h.mo882b(c2711t, charSequence, i);
                if (i < 0) {
                    break;
                }
            }
            return i;
        }
        c2711t.m843q();
        int i2 = i;
        for (InterfaceC2699h interfaceC2699h2 : this.f530a) {
            i2 = interfaceC2699h2.mo882b(c2711t, charSequence, i2);
            if (i2 < 0) {
                c2711t.m855e(false);
                return i;
            }
        }
        c2711t.m855e(true);
        return i2;
    }

    /* renamed from: c */
    public C2698g m896c(boolean z) {
        return z == this.f531b ? this : new C2698g(this.f530a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f530a != null) {
            sb.append(this.f531b ? "[" : "(");
            for (InterfaceC2699h interfaceC2699h : this.f530a) {
                sb.append(interfaceC2699h);
            }
            sb.append(this.f531b ? "]" : ")");
        }
        return sb.toString();
    }
}
