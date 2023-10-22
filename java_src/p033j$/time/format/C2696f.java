package p033j$.time.format;

import p033j$.time.AbstractC2675a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
public final class C2696f implements InterfaceC2698h {

    /* renamed from: a */
    private final char f529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2696f(char c) {
        this.f529a = c;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        sb.append(this.f529a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        return (charAt == this.f529a || (!c2710t.m849j() && (Character.toUpperCase(charAt) == Character.toUpperCase(this.f529a) || Character.toLowerCase(charAt) == Character.toLowerCase(this.f529a)))) ? i + 1 : ~i;
    }

    public String toString() {
        if (this.f529a == '\'') {
            return "''";
        }
        StringBuilder m960a = AbstractC2675a.m960a("'");
        m960a.append(this.f529a);
        m960a.append("'");
        return m960a.toString();
    }
}
