package p033j$.time.format;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.g */
/* loaded from: classes2.dex */
public final class C2696g implements InterfaceC2697h {

    /* renamed from: a */
    private final InterfaceC2697h[] f530a;

    /* renamed from: b */
    private final boolean f531b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2696g(List list, boolean z) {
        this.f530a = (InterfaceC2697h[]) list.toArray(new InterfaceC2697h[list.size()]);
        this.f531b = z;
    }

    C2696g(InterfaceC2697h[] interfaceC2697hArr, boolean z) {
        this.f530a = interfaceC2697hArr;
        this.f531b = z;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        int length = sb.length();
        if (this.f531b) {
            c2711v.m837g();
        }
        try {
            for (InterfaceC2697h interfaceC2697h : this.f530a) {
                if (!interfaceC2697h.mo886a(c2711v, sb)) {
                    sb.setLength(length);
                    return true;
                }
            }
            if (this.f531b) {
                c2711v.m843a();
            }
            return true;
        } finally {
            if (this.f531b) {
                c2711v.m843a();
            }
        }
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        if (!this.f531b) {
            for (InterfaceC2697h interfaceC2697h : this.f530a) {
                i = interfaceC2697h.mo885b(c2709t, charSequence, i);
                if (i < 0) {
                    break;
                }
            }
            return i;
        }
        c2709t.m846q();
        int i2 = i;
        for (InterfaceC2697h interfaceC2697h2 : this.f530a) {
            i2 = interfaceC2697h2.mo885b(c2709t, charSequence, i2);
            if (i2 < 0) {
                c2709t.m858e(false);
                return i;
            }
        }
        c2709t.m858e(true);
        return i2;
    }

    /* renamed from: c */
    public C2696g m899c(boolean z) {
        return z == this.f531b ? this : new C2696g(this.f530a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f530a != null) {
            sb.append(this.f531b ? "[" : "(");
            for (InterfaceC2697h interfaceC2697h : this.f530a) {
                sb.append(interfaceC2697h);
            }
            sb.append(this.f531b ? "]" : ")");
        }
        return sb.toString();
    }
}
