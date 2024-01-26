package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2705p implements InterfaceC2697h {

    /* renamed from: a */
    private final String f553a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2705p(String str) {
        this.f553a = str;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        sb.append(this.f553a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f553a;
        return !c2709t.m845r(charSequence, i, str, 0, str.length()) ? ~i : this.f553a.length() + i;
    }

    public String toString() {
        String replace = this.f553a.replace("'", "''");
        return "'" + replace + "'";
    }
}
