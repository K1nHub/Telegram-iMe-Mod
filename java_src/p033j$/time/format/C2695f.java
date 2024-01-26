package p033j$.time.format;

import p033j$.time.AbstractC2674a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
public final class C2695f implements InterfaceC2697h {

    /* renamed from: a */
    private final char f529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2695f(char c) {
        this.f529a = c;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        sb.append(this.f529a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        return (charAt == this.f529a || (!c2709t.m853j() && (Character.toUpperCase(charAt) == Character.toUpperCase(this.f529a) || Character.toLowerCase(charAt) == Character.toLowerCase(this.f529a)))) ? i + 1 : ~i;
    }

    public String toString() {
        if (this.f529a == '\'') {
            return "''";
        }
        StringBuilder m964a = AbstractC2674a.m964a("'");
        m964a.append(this.f529a);
        m964a.append("'");
        return m964a.toString();
    }
}
