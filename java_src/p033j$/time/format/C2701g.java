package p033j$.time.format;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.g */
/* loaded from: classes2.dex */
public final class C2701g implements InterfaceC2702h {

    /* renamed from: a */
    private final InterfaceC2702h[] f530a;

    /* renamed from: b */
    private final boolean f531b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2701g(List list, boolean z) {
        this.f530a = (InterfaceC2702h[]) list.toArray(new InterfaceC2702h[list.size()]);
        this.f531b = z;
    }

    C2701g(InterfaceC2702h[] interfaceC2702hArr, boolean z) {
        this.f530a = interfaceC2702hArr;
        this.f531b = z;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        int length = sb.length();
        if (this.f531b) {
            c2716v.m834g();
        }
        try {
            for (InterfaceC2702h interfaceC2702h : this.f530a) {
                if (!interfaceC2702h.mo883a(c2716v, sb)) {
                    sb.setLength(length);
                    return true;
                }
            }
            if (this.f531b) {
                c2716v.m840a();
            }
            return true;
        } finally {
            if (this.f531b) {
                c2716v.m840a();
            }
        }
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        if (!this.f531b) {
            for (InterfaceC2702h interfaceC2702h : this.f530a) {
                i = interfaceC2702h.mo882b(c2714t, charSequence, i);
                if (i < 0) {
                    break;
                }
            }
            return i;
        }
        c2714t.m843q();
        int i2 = i;
        for (InterfaceC2702h interfaceC2702h2 : this.f530a) {
            i2 = interfaceC2702h2.mo882b(c2714t, charSequence, i2);
            if (i2 < 0) {
                c2714t.m855e(false);
                return i;
            }
        }
        c2714t.m855e(true);
        return i2;
    }

    /* renamed from: c */
    public C2701g m896c(boolean z) {
        return z == this.f531b ? this : new C2701g(this.f530a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f530a != null) {
            sb.append(this.f531b ? "[" : "(");
            for (InterfaceC2702h interfaceC2702h : this.f530a) {
                sb.append(interfaceC2702h);
            }
            sb.append(this.f531b ? "]" : ")");
        }
        return sb.toString();
    }
}
