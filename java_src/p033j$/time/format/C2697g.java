package p033j$.time.format;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.g */
/* loaded from: classes2.dex */
public final class C2697g implements InterfaceC2698h {

    /* renamed from: a */
    private final InterfaceC2698h[] f530a;

    /* renamed from: b */
    private final boolean f531b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2697g(List list, boolean z) {
        this.f530a = (InterfaceC2698h[]) list.toArray(new InterfaceC2698h[list.size()]);
        this.f531b = z;
    }

    C2697g(InterfaceC2698h[] interfaceC2698hArr, boolean z) {
        this.f530a = interfaceC2698hArr;
        this.f531b = z;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        int length = sb.length();
        if (this.f531b) {
            c2712v.m833g();
        }
        try {
            for (InterfaceC2698h interfaceC2698h : this.f530a) {
                if (!interfaceC2698h.mo882a(c2712v, sb)) {
                    sb.setLength(length);
                    return true;
                }
            }
            if (this.f531b) {
                c2712v.m839a();
            }
            return true;
        } finally {
            if (this.f531b) {
                c2712v.m839a();
            }
        }
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        if (!this.f531b) {
            for (InterfaceC2698h interfaceC2698h : this.f530a) {
                i = interfaceC2698h.mo881b(c2710t, charSequence, i);
                if (i < 0) {
                    break;
                }
            }
            return i;
        }
        c2710t.m842q();
        int i2 = i;
        for (InterfaceC2698h interfaceC2698h2 : this.f530a) {
            i2 = interfaceC2698h2.mo881b(c2710t, charSequence, i2);
            if (i2 < 0) {
                c2710t.m854e(false);
                return i;
            }
        }
        c2710t.m854e(true);
        return i2;
    }

    /* renamed from: c */
    public C2697g m895c(boolean z) {
        return z == this.f531b ? this : new C2697g(this.f530a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f530a != null) {
            sb.append(this.f531b ? "[" : "(");
            for (InterfaceC2698h interfaceC2698h : this.f530a) {
                sb.append(interfaceC2698h);
            }
            sb.append(this.f531b ? "]" : ")");
        }
        return sb.toString();
    }
}
