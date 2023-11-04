package p033j$.time.format;

import p033j$.time.AbstractC2679a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
public final class C2700f implements InterfaceC2702h {

    /* renamed from: a */
    private final char f529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2700f(char c) {
        this.f529a = c;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        sb.append(this.f529a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        return (charAt == this.f529a || (!c2714t.m850j() && (Character.toUpperCase(charAt) == Character.toUpperCase(this.f529a) || Character.toLowerCase(charAt) == Character.toLowerCase(this.f529a)))) ? i + 1 : ~i;
    }

    public String toString() {
        if (this.f529a == '\'') {
            return "''";
        }
        StringBuilder m961a = AbstractC2679a.m961a("'");
        m961a.append(this.f529a);
        m961a.append("'");
        return m961a.toString();
    }
}
